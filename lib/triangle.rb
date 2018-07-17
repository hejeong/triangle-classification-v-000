class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    # Check for triangle inequality
    fail_inequality = (@length_one + @length_two < @length_three) || (@length_one + @length_three < @length_two)  || (@length_two + @length_three < @length_one)
    greater_than_zero = (@length_one > 0) && (@length_two > 0) && (@length_three > 0)
    equal_length_count = 0
    if @length_one == @length_two
      equal_length_count += 1

    if fail_inequality == true || greater_than_zero == false
      raise TriangleError
    else
      case equal_length_count
      when 0
      when 2
      when 3
      end
    end
  end

  class TriangleError < StandardError

  end
end
