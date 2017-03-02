require "spec_helper"

RSpec.describe WavesUtilities::Nationality do
  context ".all" do
    subject { described_class.all }

    it "lists the nationalities" do
      expect(subject.first).to eq("UNITED KINGDOM")
    end
  end
end
