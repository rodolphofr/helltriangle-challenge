class HellTriangle
  attr_reader :triangle, :dimensions

  def initialize(triangle)
    is_triangle? triangle
    @triangle = triangle
    @dimensions = @triangle.length
  end

  def max_total
    _triangle = @triangle.dup

    (@dimensions - 2).downto(0) do |dimension|
      (0..dimension).each do |index|
        _triangle[dimension][index] += max_num(dimension + 1, index)
      end
    end

    _triangle[0][0]
  end

  private

  def max_num(dimension, index)
    node_left  = @triangle[dimension][index]
    node_right = @triangle[dimension][index + 1]
    [node_left, node_right].max
  end

  def is_triangle?(triangle)
    if not triangle.is_a? Array
      raise ArgumentError, 'triangle must be a Array'
    end

    if triangle.length <= 1
      raise ArgumentError, 'triangle must have two or more dimensions'
    end

    previous_dimension = triangle[0].length
    triangle[1..-1].each do |dimension|
      if previous_dimension >= dimension.length
        raise ArgumentError, 'is not triangle'
      end
      previous_dimension = dimension.length
    end
  end
end