require "spec_helper"
require "waves/utilities/nationality"

RSpec.describe WavesUtilities::Nationality do
  context ".all" do
    subject { described_class.all }

    it "lists the nationalities" do
      expect(subject.first).to eq("AKROTIRI AND DHEKELIA")
    end
  end
end
