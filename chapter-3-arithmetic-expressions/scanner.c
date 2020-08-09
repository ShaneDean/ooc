
#include <ctype.h>
#include <errno.h>
#include <stdlib.h>

#include "parse.h"
#include "value.h"

static double number;
static enum tokens token;

static enum tokens scan(const char *buf)
{
  static const char *bp;

  if (buf)
    bp = buf;

  while (isspace(*bp))
    ++bp;

  if (isdigit(*bp) || *bp == '.')
  {
    errno = 0;
    token = NUMBER, number = strtod(bp, (char **)&bp);
    if (errno = ERANGE)
      error("%bad value: %s", strerror(errno));
  }
  else
    token = *bp ? bp++ : 0;

  return token;
}