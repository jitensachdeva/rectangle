class Meter < Unit
  def initialize
    super(Unit::M)
    @conversion_factor_mm = 1000
  end
end