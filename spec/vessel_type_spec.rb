require "spec_helper"

RSpec.describe WavesUtilities::VesselType do
  context ".all" do
    context "part_3 by default" do
      subject { described_class.all }
      it { expect(subject.first).to eq("BARGE") }
    end

    context "part_1" do
      subject { described_class.all(:part_1) }
      it { expect(subject.first).to eq("BULK CARRIER") }
    end

    context "part_2" do
      subject { described_class.all(:part_2) }
      it { expect(subject.first).to eq("FISHING VESSEL") }
    end

    context "part_4" do
      subject { described_class.all(:part_4, false) }
      it { expect(subject.first).to eq("BULK CARRIER") }
    end

    context "part_4 fishing" do
      subject { described_class.all(:part_4, true) }
      it { expect(subject.first).to eq("FISHING VESSEL") }
    end
  end
end
