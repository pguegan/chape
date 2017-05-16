require 'ring'

RSpec.describe Ring do

  let(:ring) { Ring.new 5, 10 }

  describe "#perimeter" do

    it "computes the perimeter" do
      expect(ring.perimeter).to be_within(0.001).of(94.24777960769379)
    end

  end

  describe "#area" do

    it "computes the area" do
      expect(ring.area).to be_within(0.001).of(235.61944901923448)
    end

  end

  describe "#scale" do

    let(:scaled) { ring.scale 3 }

    it "is a Ring" do
      expect(scaled).to be_a(Ring)
    end

    it "scales both width and height" do
      expect(scaled).to eq(Ring.new 15, 30)
    end

  end

end