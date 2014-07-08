# calculates perimeter for rectangle
class Rectangle
  def initialize length, breadth
    @length = to_mm length
    @breadth =to_mm breadth
  end

  def perimeter
    [2*(@length+@breadth),"mm"]
  end


private
  def to_mm measurement
    length, unit = measurement
    case unit
      when "m"
        return length * 1000
      when "cm"
        return length *10
      when "mm"
        return length
      else
        return 0
    end
  end


end

