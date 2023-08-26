class Matrix
  def initialize(matrix)
    @matrix = matrix.split(/\n/).map! { |item| item.split.map!(&:to_i)}
  end

  def row(row)
    @matrix[row - 1]
  end

  def column(column)
    @matrix.map { |array| array[column - 1]}
  end
end
