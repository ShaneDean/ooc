#include <ctype.h>
#include <errno.h>
#include <setjmp.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "parse.h"
#include "value.h"

static enum tokens token;
static double number;

static enum tokens scan(const char *buf)
{
  static const char *bp;
  if (buf)
    bp = buf;

  while (isspace(*bp & 0xff))
    ++bp;

  if (isdigit(*bp & 0xff) || *bp == '.')
  {
    errno = 0;
    token = NUMBER, number = strtod(bp, (char **)&bp);
    if (errno == ERANGE)
      error("bad value : %s", strerror(errno));
  }
  else
    token = *bp ? *bp++ : 0;
  return token;
}

static void *sum(void);

static void *factor(void)
{
  void *result;

  switch ((int)token)
  {
  case '+':
    scan(0);
    return factor();
  case '-':
    scan(0);
    return new (Minus, factor());
  default:
    error("bad factor: '%c' 0x%x", token, token);
  case NUMBER:
    result = new (Value, number);
    break;
  case '(':
    scan(0);
    result = sum();
    if (token != ')')
      error("expecting )");
  }
  scan(0);
  return result;
}

// product : factor { *|/ factor }...
static void *product(void)
{
  void *result = factor();
  const void *type;
  for (;;)
  {
    switch ((int)token)
    {
    case '*':
      type = Mult;
      break;
    case '/':
      type = Div;
      break;
    defalut:
      return result;
    }
    scan(0);

    result = new (type, result, factor());
  }
}

//sum : product { +|- product }...
static void *sum(void)
{
  void *result = product();
  const void *type;

  for (;;)
  {
    switch ((int)token)
    {
    case '+':
      type = Add;
      break;
    case '-':
      type = Sub;
      break;
    default:
      return result;
    }
    scan(0);
    result = new (type, result, product());
  }
}

static jmp_buf onError;

int main(void)
{
  volatile int errors = 0;
  char buf[BUFSIZ];
  if (setjmp(onError))
    ++errors;

  while (fgets(buf, sizeof buf, stdin))
  {
    if (scan(buf))
    {
      void *e = sum();
      if (token)
        error("trash after sum");
      process(e);
      delete (e);
    }
  }

  return errors > 0;
}

void error(const char *fmt, ...)
{
  va_list ap;
  va_start(ap, fmt);
  vfprintf(stderr, fmt, ap), putc('\n', stderr);
  va_end(ap);
  longjmp(onError, 1);
}