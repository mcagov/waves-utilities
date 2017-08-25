require "spec_helper"

RSpec.describe WavesUtilities::Country do
  context ".all" do
    subject { described_class.all }

    it "lists the countries" do
      expect(subject.first).to eq("UNITED KINGDOM")
    end

    it "contains the UNITED KINGDOM once" do
      expect(subject.count("UNITED KINGDOM")).to eq(1)
    end
  end
end
