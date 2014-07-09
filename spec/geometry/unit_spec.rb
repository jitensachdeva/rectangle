require 'spec_helper'

describe 'Unit' do

  context "conversion" do
    it "returns 1000 for meters" do
      unit = Meter.new
      expect(unit.convert_to_mm(1)).to eq(1000)
    end

    it "returns 10 for cms" do
      unit = Centimeter.new
      expect(unit.convert_to_mm(1)).to eq(10)
    end

    it "returns 1 for mm" do
      unit = Millimeter.new
      expect(unit.convert_to_mm(1)).to eq(1)
    end
  end


end