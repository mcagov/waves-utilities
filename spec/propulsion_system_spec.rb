require "spec_helper"

RSpec.describe WavesUtilities::PropulsionSystem do
  context ".all" do
    subject { described_class.all }

    it { expect(subject.first).to eq("Sail") }
  end
end
