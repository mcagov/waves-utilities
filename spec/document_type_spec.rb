require "spec_helper"

RSpec.describe WavesUtilities::DocumentType do
  context "#name" do
    let(:document_type) { described_class.new(code) }

    subject { document_type.name }

    context "with a valid document_type" do
      let(:code) { "carving_and_marking"}

      it { expect(subject).to eq("Carving & Marking Note") }
    end

    context "with an invalid document_type" do
      let(:code) { "FOOOO"}

      it { expect(subject).to eq("") }
    end
  end

  context ".all(part_1)" do
    it "includes the code_certificate" do
      expect(described_class.all(:part_1))
        .to include(code_certificate)
    end
  end

  context ".all(part_2)" do
    it "lists the document_types for part_2" do
      expect(described_class.all(:part_2).first)
        .to eq(["Bill of Sale", "bill_of_sale"])
    end

    it "does not include the code_certificate" do
      expect(described_class.all(:part_2))
        .not_to include(code_certificate)
    end
  end
end

def code_certificate
  ["Code Certificate", "code_certificate"]
end
