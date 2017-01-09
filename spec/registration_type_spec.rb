require "spec_helper"

RSpec.describe WavesUtilities::RegistrationType do
  context ".all" do
    subject { described_class.all }

    it "lists the vessel_types" do
      expect(subject.first).to eq(:simple)
    end
  end
end
