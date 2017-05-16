require 'regular_polygon'

RSpec.describe RegularPolygon do

  let(:regular_polygon) { RegularPolygon.new 10, 5 }

  describe "#perimeter" do

    it "computes the perimeter" do
      expect(regular_polygon.perimeter).to be_within(0.001).of(58.77852522924732)
    end

  end

  describe "#area" do

    it "computes the area" do
      expect(regular_polygon.area).to be_within(0.001).of(237.7641290737884)
    end

  end

  describe "#scale" do

    let(:scaled) { regular_polygon.scale 3 }

    it "is a RegularPolygon" do
      expect(scaled.class).to eq(RegularPolygon)
    end

    it "scales only the radius" do
      expect(scaled).to eq(RegularPolygon.new 30, 5)
    end

  end

end