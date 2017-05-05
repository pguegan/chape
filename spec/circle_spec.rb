require 'circle'

RSpec.describe Circle do

  let(:circle) { Circle.new 5 }

  describe "#perimeter" do

    it "computes the perimeter" do
      skip
      expect(circle.perimeter).to be_within(0.00001).of(31.4159265359)
    end

  end

  describe "#area" do

    it "computes the area" do
      skip
      expect(circle.area).to be_within(0.00001).of(78.5398163397)
    end

  end

  describe "#scale" do

    let(:scaled) { circle.scale 3 }

    it "is a circle" do
      skip
      expect(scaled.class).to eq(Circle)
    end

    it "scales the circle" do
      skip
      expect(scaled).to eq(Circle.new 15)
    end

  end

end