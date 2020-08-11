#include <assert.h>
#include <stdlib.h>

#include "new.h"
#include "new_r.h"

void draw(const void *self)
{
  const struct Class *const *cp = self;
  assert(self && *cp && (*cp)->draw);
  (*cp)->draw(self);
}

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