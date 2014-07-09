# provides constants and conversion factor for units
class Unit



  def initialize(conversion_factor_mm)
    @conversion_factor_mm = conversion_factor_mm
  end

  def convert_to_mm(value)
    value * @conversion_factor_mm
  end
end

Unit::MM = Unit.new 1
Unit::CM = Unit.new 10
Unit::M = Unit.new 1000

#puts Unit::MM
