require "spec_helper"

RSpec.describe WavesUtilities::ClassificationSociety do
  context ".all" do
    subject { described_class.all }

    it "lists the classification_societies" do
      expect(subject.first).to eq("American Bureau of Shipping")
    end
  end
end
