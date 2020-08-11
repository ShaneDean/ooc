#ifndef POINT_R_H
#define POINT_R_H

struct Point
{
  const void *class;
  int x, y; /* coordinates */
};

#define x(p) (((const struct Point *)(p))->x)
#define y(p) (((const struct Point *)(p))->y)

#endif