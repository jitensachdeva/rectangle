require 'spec_helper'


describe Rectangle do

  context "calculates perimeter in mm" do
    it "3000 mm for sides 1m and 50 cm" do
      #Length.new(1, Unit(Unit::M))
      length = Length.new(1, Unit::M)
      breadth = Length.new(50, Unit::CM)
      parameter = Length.new(3000, Unit::MM)

      rectangle =Rectangle.new(length, breadth)
      expect(rectangle.perimeter).to eq(parameter)
    end

    it "1820 mm for sides 90cm and 10mm " do
      length = Length.new(90, Unit::CM)
      breadth = Length.new(10, Unit::MM)
      perimeter = Length.new(1820, Unit::MM)

      rectangle =Rectangle.new(length, breadth)
      expect(rectangle.perimeter).to eq(perimeter)
    end

  end


  context "equality" do
    let(:length) {Length.new(30, Unit::CM)}
    let(:breadth)  {Length.new(10, Unit::CM)}
    let(:rectangle) {Rectangle.new(length, breadth)}
    let(:rectangle1) {Rectangle.new(length, breadth)}

    it "same side and breadth should be equal" do
      expect(rectangle).to eq(rectangle1)
    end

    it "swapped side and breadth should be equal" do
      expect(rectangle).to eq(rectangle1)
    end

    it 'same perimeter but different sides should not be equal' do
      new_length = Length.new(20,Unit::CM)
      rectangle2 = Rectangle.new(new_length, new_length)
      expect(rectangle.perimeter).to eq(rectangle2.perimeter)
      expect(rectangle).to_not eq(rectangle2)
    end

  end

  context "equality checks" do
    let(:length) { Length.new(30, Unit::CM) }
    let(:breadth) { Length.new(10, Unit::M) }

    let(:rectangle) do
      Rectangle.new(length, breadth)
    end

    it "should be equal for same object id" do
      expect(rectangle).to eq(rectangle)
    end

    it "should not be null" do
      expect(rectangle).to_not eq(nil)
    end

    it "should not be equal for different type" do
      object = Object.new
      expect(rectangle).to_not eq(object)
    end

    it "should have same hash code" do
      rectangle1 = Rectangle.new(length, breadth)
      rectangle2 = Rectangle.new(length, breadth)
      expect(rectangle1.hash).to eq(rectangle2.hash)
    end

    it "symmetric property" do
      rectangle1 = Rectangle.new(length, breadth)
      rectangle2 = Rectangle.new(length, breadth)
      expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle1)
    end

    it "transitive property" do
      rectangle1 = Rectangle.new(length, breadth)
      rectangle2 = Rectangle.new(length, breadth)
      rectangle3 = Rectangle.new(length, breadth)
      expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle3) and expect(rectangle3).to eq(rectangle1)
    end

  end
end