require "spec_helper"

RSpec.describe WavesUtilities::Port do
  context ".all" do
    subject { described_class.all }

    it "lists the countries" do
      expect(subject.first).to eq(["ABERDEEN", "A"])
    end
  end
end
