#ifndef PARSE_H
#define PARSE_H

enum tokens
{
  NUMBER = 'n',
  CONST = 'c',
  MATH = 'm',
  VAR = 'v',

  LET = 'l'
};

void error(const char *fmt, ...);

#endif