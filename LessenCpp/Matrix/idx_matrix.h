#ifndef IDX_MATRIX_H
#define IDX_MATRIX_H

#include <vector>

class idx_matrix
{
public:
  idx_matrix(const int n_cols, const int n_rows);

  int get(const int x, const int y) const;

  int get_n_cols() const noexcept;
  int get_n_rows() const noexcept;

  void set(const int x, const int y, const int value);

private:
  /// Index Position
  /// 0: (0,0)
  /// 1: (1,0)
  /// 2: (2,0)
  std::vector<int> m_v;

  int m_n_cols;
};

#endif // IDX_MATRIX_H
