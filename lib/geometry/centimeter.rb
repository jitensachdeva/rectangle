class Centimeter < Unit

  def initialize
    super(Unit::CM)
    @conversion_factor_mm = 10
  end

end

