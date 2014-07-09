# calculates perimeter for rectangle
class Rectangle
  attr_reader :length, :breadth

  def initialize length, breadth
    @length = length
    @breadth =breadth
  end

  def perimeter
    Length.new(2*(@length.value_in_mm + @breadth.value_in_mm), Millimeter.new)
  end

  def ==(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false if other.class != self.class
    [@length, @breadth] == [other.length, other.breadth] || [@length, @breadth] == [other.breadth, other.length]
  end

  def hash
    37*(@length.hash + @breadth.hash)
  end

  def eql? other
    self == other
  end

end

