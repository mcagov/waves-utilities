require "spec_helper"

describe WavesUtilities::FeeSchedule do
  context "#standard_fee" do
    it "retrieves a fee for each part" do
      [:part_1, :part_2, :part_3, :part_4].each do |part|

        expect(WavesUtilities::FeeSchedule.standard_fee(part))
          .to be_a(Integer)
      end
    end
  end

  context "#premium_fee" do
    it "retrieves a premium_fee for each part" do
      [:part_1, :part_2, :part_3, :part_4].each do |part|

        premium_fee =
          WavesUtilities::FeeSchedule.standard_fee(part) +
            WavesUtilities::FeeSchedule::PREMIUM_SURPLUS

        expect(WavesUtilities::FeeSchedule.premium_fee(part))
          .to eq(premium_fee)
      end
    end
  end
end
