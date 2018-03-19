require "spec_helper"

RSpec.describe WavesUtilities::DocumentType do
  context "#name" do
    let(:document_type) { described_class.new(code) }

    subject { document_type.name }

    context "with a valid document_type" do
      let(:code) { :declaration_of_elgibility}

      it { expect(subject).to eq("Declaration of Eligibility") }
    end

    context "with an invalid document_type" do
      let(:code) { "FOOOO"}

      it { expect(subject).to eq("") }
    end
  end
end
