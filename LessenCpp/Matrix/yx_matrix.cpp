#include "yx_matrix.h"

#include <cassert>

yx_matrix::yx_matrix(const int n_cols, const int n_rows)
  : m_v(n_rows, std::vector<int>(n_cols))
{
  //Precondition
  assert(n_cols > 0);
  assert(n_rows > 0);

  //Postcondition
  assert(get_n_cols() == n_cols);
  assert(get_n_rows() == n_rows);
}

int yx_matrix::get(const int x, const int y) const
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  return m_v[y][x];
}

int yx_matrix::get_n_cols() const noexcept
{
  //Precondition
  assert(!m_v.empty());

  return m_v.back().size();
}

int yx_matrix::get_n_rows() const noexcept
{
  return m_v.size();
}

void yx_matrix::set(const int x, const int y, const int value)
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  m_v[y][x] = value;

  //Postcondition
  assert(get(x,y) == value);
}
