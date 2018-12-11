require "spec_helper"

RSpec.describe WavesUtilities::RegistrationType do
  context ".in_part" do
    subject { described_class.in_part(part) }

    context "part_1" do
      let(:part) { "part_1" }
      it { expect(subject.first).to eq(:commercial) }
    end

    context "part_2" do
      let(:part) { :part_2 }
      it { expect(subject.first).to eq(:full) }
    end

    context "part_4" do
      let(:part) { :part_4 }
      it { expect(subject[1]).to eq(:fishing) }
    end
  end
end
