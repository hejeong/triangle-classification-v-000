class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    # Check for triangle inequality
    inequality = (@length_one + @length_two < @length_three) || (@length_one + @length_three < @length_two)  || (@length_two + @length_three < @length_one)

    if inequality == true
      raise TriangleError
    end

  end

  class TriangleError < StandardError

  end
end
