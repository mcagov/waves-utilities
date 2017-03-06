require "spec_helper"

RSpec.describe WavesUtilities::IssuingAuthority do
  context ".all" do
    subject { described_class.all }

    it "lists the issuing_authorities" do
      expect(subject.first).to eq("MCA")
    end
  end
end
