require "spec_helper"

RSpec.describe WavesUtilities::PropulsionSystem do
  context "#name" do
    let(:propulstion_system) { described_class.new(code) }

    subject { propulstion_system.name }

    context "with a valid code" do
      let(:code) { "steam" }

      it { expect(subject).to eq("Steam") }
    end

    context "with an invalid port_code" do
      let(:code) { "FOOOO" }

      it { expect(subject).to eq("") }
    end
  end

  context ".all" do
    subject { described_class.all }

    it { expect(subject.first).to eq(["None (dumb)", :none]) }
  end
end
