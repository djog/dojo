#include "idx_matrix.h"

#include <cassert>

idx_matrix::idx_matrix(const int n_cols, const int n_rows)
  : m_v(n_cols * n_rows),
    m_n_cols{n_cols}
{
  //Precondition
  assert(n_cols > 0);
  assert(n_rows > 0);

  //Postcondition
  assert(get_n_cols() == n_cols);
  assert(get_n_rows() == n_rows);
}

int idx_matrix::get(const int x, const int y) const
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  return m_v[x + (y * m_n_cols)];
}

int idx_matrix::get_n_cols() const noexcept
{
  return m_n_cols;
}

int idx_matrix::get_n_rows() const noexcept
{
  //Precondition
  assert(!m_v.empty());
  assert(m_n_cols);

  return m_v.size() / m_n_cols;
}

void idx_matrix::set(const int x, const int y, const int value)
{
  //Precondition
  assert(x < get_n_cols());
  assert(y < get_n_rows());

  m_v[x + (y * m_n_cols)] = value;

  //Postcondition
  assert(get(x,y) == value);
}
