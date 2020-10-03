#ifndef VALUE_R_H
#define VALUE_R_H

#include <stdarg.h>

struct Type
{
  void *(*new)(va_list ap);
  double (*exec)(const void *tree);
  void (*delete)(void *tree);
};

double exec(const void *tree);

struct Bin
{
  const void *type;
  void *left, *right;
};

#define left(tree) (((struct Bin *)tree)->left)
#define right(tree) (((struct Bin *)tree)->right)

void *mkBin(va_list ap);
void freeBin(void *tree);

#endif // !VALUE_R_H
