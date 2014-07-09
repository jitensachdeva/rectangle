class Millimeter < Unit
  def initialize
    super(Unit::MM)
    @conversion_factor_mm = 1
  end
end