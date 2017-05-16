require 'rectangle'

RSpec.describe Rectangle do

  let(:rectangle) { Rectangle.new 10, 5 }

  describe "#perimeter" do

    it "computes the perimeter" do
      expect(rectangle.perimeter).to eq(30)
    end

  end

  describe "#area" do

    it "computes the area" do
      expect(rectangle.area).to eq(50)
    end

  end

  describe "#scale" do

    let(:scaled) { rectangle.scale 3 }

    it "is a Rectangle" do
      expect(scaled.class).to eq(Rectangle)
    end

    it "scales both width and height" do
      expect(scaled).to eq(Rectangle.new 30, 15)
    end

  end

end