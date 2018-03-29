#include "xy_matrix.h"

#include <cassert>

xy_matrix::xy_matrix(const int n_cols, const int n_rows)
  : m_v(n_cols, std::vector<int>(n_rows))
{
  //Precondition
  assert(n_cols > 0);
  assert(n_rows > 0);

  //Postcondition
  assert(get_n_cols() == n_cols);
  assert(get_n_rows() == n_rows);
}

int xy_matrix::get(const int x, const int y) const
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  return m_v[x][y];
}

int xy_matrix::get_n_cols() const noexcept
{
  return m_v.size();
}

int xy_matrix::get_n_rows() const noexcept
{
  //Precondition
  assert(!m_v.empty());

  return m_v.back().size();
}

void xy_matrix::set(const int x, const int y, const int value)
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  m_v[x][y] = value;

  //Postcondition
  assert(get(x,y) == value);
}

