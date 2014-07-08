require 'spec_helper'

describe Rectangle do

  context "calculates perimeter" do
    it "as 3000 mm for sides 1m and 50 cm" do
      rectangle =Rectangle.new([1, "m"], [50 ,"cm"])
      expect(rectangle.perimeter).to eq([3000, "mm"])
    end

    it "as 1820 mm for sides 90cm and 10mm " do
      rectangle =Rectangle.new([90, "cm"], [10 ,"mm"])
      expect(rectangle.perimeter).to eq([1820, "mm"])
    end

  end

end