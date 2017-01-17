require "spec_helper"

RSpec.describe WavesUtilities::EligibilityStatus do
  context ".all" do
    subject { described_class.all }

    it "lists the eligibility_statuses" do
      expect(subject.first[1]).to eq(:status_a)
    end
  end
end
