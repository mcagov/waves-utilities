require "spec_helper"

RSpec.describe WavesUtilities::Nationality do
  context ".all" do
    subject { described_class.all }

    it "lists the nationalities" do
      expect(subject.first).to eq("BRITISH")
    end

    it "contains BRITISH once" do
      expect(subject.count("BRITISH")).to eq(1)
    end
  end
end
