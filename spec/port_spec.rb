require "spec_helper"

RSpec.describe WavesUtilities::Port do
  context "#name" do
    let(:port) { described_class.new(code) }

    subject { port.name }

    context "with a valid port_code" do
      let(:code) { "BD" }

      it { expect(subject).to eq("BIDEFORD") }
    end

    context "with an invalid port_code" do
      let(:code) { "FOOOO" }

      it { expect(subject).to eq("") }
    end
  end

  context ".all" do
    it "lists the countries for all parts" do
      expect(described_class.all.first).to eq(["ABERDEEN", "A"])
    end
  end
end
