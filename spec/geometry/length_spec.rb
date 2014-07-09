require 'spec_helper'

describe Length do

  context "give value in mm" do

    it '100 for 10cm' do
      length = Length.new(10, Centimeter.new)
      expect(length.value_in_mm).to eq(100)
    end

    it '1000 for 1m' do
      length = Length.new(1, Meter.new)
      expect(length.value_in_mm).to eq(1000)
    end
    it '1 for 1mm' do
      length = Length.new(1, Millimeter.new)
      expect(length.value_in_mm).to eq(1)
    end
  end

  context "Equality checks" do
    let(:length) do
      Length.new(1, Meter.new)
    end
    it "should be equal for same object id" do
      expect(length).to eq(length)
    end

    it "should not be null" do
      expect(length).to_not eq(nil)
    end

    it "should not be equal for different type" do
      object = Object.new
      expect(length).to_not eq(object)
    end

    it "should have same hash code" do
      length1 = Length.new(1, Meter.new)
      length2 = Length.new(1, Meter.new)
      expect(length1.hash).to eq(length2.hash)
    end

    it "should have same hash code for different units" do
      length1 = Length.new(1, Meter.new)
      length2 = Length.new(100, Centimeter.new)
      expect(length1.hash).to eq(length2.hash)
    end

    it "symmetric property" do
      length1 = Length.new(1, Meter.new)
      length2 = Length.new(1, Meter.new)
      expect(length1).to eq(length2) and expect(length2).to eq(length1)
    end

    it "transitive property" do
      length1 = Length.new(1, Meter.new)
      length2 = Length.new(1, Meter.new)
      length3 = Length.new(1, Meter.new)
      expect(length1).to eq(length2) and expect(length2).to eq(length3) and expect(length3).to eq(length1)
    end
  end




end