require "spec_helper"

describe WavesUtilities::FeeSchedule do
  context "#standard_fee" do
    it "retrieves a fee" do
      expect(WavesUtilities::FeeSchedule.standard_fee).to eq(2500)
    end
  end

  context "#premium_fee" do
    it "retrieves a fee" do
      expect(WavesUtilities::FeeSchedule.premium_fee).to eq(7500)
    end
  end
end
