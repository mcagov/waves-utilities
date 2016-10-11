require "spec_helper"
require "waves/utilities/country"

RSpec.describe WavesUtilities::Country do
  context ".all" do
    subject { described_class.all }

    it "lists the countries" do
      expect(subject.first).to eq("AFGHANISTAN")
    end
  end
end
