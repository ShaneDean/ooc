#ifndef NEW_R_H
#define NEW_R_H

#include <stdarg.h>
#include <stddef.h>

struct Class
{
  size_t size;
  void *(*ctor)(void *self, va_list *app);
  void *(*dtor)(void *self);
  void (*draw)(const void *self);
};

#endif // !