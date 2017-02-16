require "spec_helper"

describe WavesUtilities::FeeSchedule do
  context "#standard_fee" do
    it { expect(described_class.standard_fee).to eq(2500) }
  end

  context "#premium_fee" do
    it { expect(described_class.premium_fee).to eq(7500) }
  end
end
