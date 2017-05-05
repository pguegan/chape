require 'triangle'

RSpec.describe Triangle do

  let(:triangle) { Triangle.new 8, 4, 10 }

  describe "#perimeter" do

    it "computes the perimeter" do
      skip
      expect(triangle.perimeter).to eq(22)
    end

  end

  describe "#area" do

    it "computes the area" do
      skip
      expect(triangle.area).to be_within(0.00001).of(15.198684153570664)
    end

  end

  describe "#scale" do

    let(:scaled) { triangle.scale 2 }

    it "is a Triangle" do
      skip
      expect(scaled.class).to eq(Triangle)
    end

    it "scales the triangle" do
      skip
      expect(scaled).to eq(Triangle.new 16, 8, 20)
    end

  end

end