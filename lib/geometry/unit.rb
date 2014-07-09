# provides constants and conversion factor for units
class Unit

  MM = Object.new
  CM = Object.new
  M = Object.new

  def initialize(type)
    @type = type
    @conversion_factor_mm = 1
  end

  def convert_to_mm(value)
    value * @conversion_factor_mm
  end
end

#puts Unit::MM
