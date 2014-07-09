require 'spec_helper'

describe 'Unit' do

  context "conversion" do
    it "returns 1000 for meters" do
      unit = Unit.new Unit::M
      expect(unit.convert_to_mm(1)).to eq(1000)
    end

    it "returns 10 for cms" do
      unit = Unit.new Unit::CM
      expect(unit.convert_to_mm(1)).to eq(10)
    end

    it "returns 1 for mm" do
      unit = Unit.new Unit::MM
      expect(unit.convert_to_mm(1)).to eq(1)
    end
  end


end