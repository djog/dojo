#ifndef XY_MATRIX_H
#define XY_MATRIX_H

#include <vector>

class xy_matrix
{
public:
  xy_matrix(const int n_cols, const int n_rows);

  int get(const int x, const int y) const;

  int get_n_cols() const noexcept;
  int get_n_rows() const noexcept;

  void set(const int x, const int y, const int value);

private:
  ///X-Y-ordered
  std::vector<std::vector<int>> m_v;
};

#endif // XY_MATRIX_H
