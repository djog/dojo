#include <cassert>

#include "xy_matrix.h"
#include "yx_matrix.h"
#include "idx_matrix.h"

template <class T>
void create()
{
  const int n_cols{4};
  const int n_rows{3};
  const T t(n_cols, n_rows);
  assert(t.get_n_cols() == n_cols);
  assert(t.get_n_rows() == n_rows);
}

template <class T>
void set_and_get()
{
  const int n_cols{4};
  const int n_rows{3};
  T t(n_cols, n_rows);
  const int x{1};
  const int y{2};
  const int value{42};
  t.set(x,y,value);
  assert(t.get(x,y) == value);
}


int main()
{
  create<xy_matrix>();
  create<yx_matrix>();
  create<idx_matrix>();
  set_and_get<xy_matrix>();
  set_and_get<yx_matrix>();
  set_and_get<idx_matrix>();
}
