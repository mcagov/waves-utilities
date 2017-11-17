require "spec_helper"

RSpec.describe WavesUtilities::TerminationReason do
  context ".all" do
    subject { described_class.all }

    it "lists the termination_reasons" do
      expect(subject.first).to include("56(1)(aa)")
    end
  end
end
