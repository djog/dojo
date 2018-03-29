#ifndef YX_MATRIX_H
#define YX_MATRIX_H

#include <vector>

class yx_matrix
{
public:
  yx_matrix(const int n_cols, const int n_rows);

  int get(const int x, const int y) const;

  int get_n_cols() const noexcept;
  int get_n_rows() const noexcept;

  void set(const int x, const int y, const int value);

private:
  ///Y-X-ordered
  std::vector<std::vector<int>> m_v;
};

#endif // YX_MATRIX_H
