#include <stdlib.h>
#include <assert.h>
#include <stddef.h>

#include "new.h"
#include "new_r.h"

// 实现 new.h 里面定义的接口
void *new (const void *_class, ...)
{
  // 这里的Class 来自 new_r.h
  const struct Class *class = _class;
  void *p = calloc(1, class->size);

  assert(p);
  *(const struct Class **)p = class;

  if (class->ctor)
  {
    va_list ap;
    va_start(ap, _class);
    p = class->ctor(p, &ap);
    va_end(ap);
  }
  return p;
}

void delete (void *self)
{
  const struct Class **cp = self;
  if (self && *cp && (*cp)->dtor)
    self = (*cp)->dtor(self);

  free(self);
}

int differ(const void *self, const void *b)
{
  const struct Class *const *cp = self;
  assert(self && *cp && (*cp)->differ);
  return (*cp)->differ(self, b);
}
size_t sizeOf(const void *self)
{
  const struct Class *const *cp = self;
  assert(self && *cp);
  return (*cp)->size;
}

void *clone(const void *self)
{
  const struct Class *const *cp = self;

  assert(self && *cp && (*cp)->clone);
  return (*cp)->clone(self);
}