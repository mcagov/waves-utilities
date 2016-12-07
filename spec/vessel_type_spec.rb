require "spec_helper"

RSpec.describe WavesUtilities::VesselType do
  context ".all" do
    subject { described_class.all }

    it "lists the vessel_types" do
      expect(subject.first).to eq("BARGE")
    end
  end
end
