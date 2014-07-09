# provides constants and conversion factor for units
class Unit

  MM = Object.new
  CM = Object.new
  M = Object.new


  def initialize(value)
    @type = value
  end

  def convert_to_mm(value)
    case @type
      when MM
        1 * value
      when CM
        10 * value
      when M
        1000 * value
    end
  end
end

#puts Unit::MM
