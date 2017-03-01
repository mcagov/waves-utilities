require "spec_helper"

RSpec.describe WavesUtilities::VesselType do
  context ".all" do
    context "part_3 by default" do
      subject { described_class.all }
      it { expect(subject.first).to eq("BARGE") }
    end

    context "part_2" do
      subject { described_class.all(:part_2) }
      it { expect(subject.first).to eq("FISHING VESSEL") }
    end
  end
end
