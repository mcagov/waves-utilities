require "spec_helper"

describe WavesUtilities::Vessel do
  context "in general" do
    subject { described_class.new(input_params) }

    context "#new" do
      let(:input_params) do
        { name: "A real name", non_existent: "rubbish" }
      end

      it "has a name" do
        expect(subject.name).to eq("A real name")
      end

      it "does not have non_existent" do
        expect { subject.non_existent }.to raise_error(NoMethodError)
      end
    end

    context "#type_of_vessel" do
      context "vessel_type_other" do
        let(:input_params) { { vessel_type_other: "MUG" } }

        it "uses the vessel_type_other" do
          expect(subject.type_of_vessel).to eq("MUG")
        end
      end

      context "vessel_type" do
        let(:input_params) do
          { vessel_type: "BARGE", vessel_type_other: "" }
        end

        it "uses the vessel_type" do
          expect(subject.type_of_vessel).to eq("BARGE")
        end
      end
    end

    context "pln" do
      let(:input_params) { { port_code: "ABC", port_no: "12345" } }

      it "builds the pln" do
        expect(subject.pln).to eq("ABC12345")
      end
    end

    context "port_name" do
      context "with a port_code" do
        let(:input_params) { { port_code: "SU" } }

        it { expect(subject.port_name).to eq("SOUTHAMPTON") }
      end

      context "with a blank port_code" do
        let(:input_params) { { port_code: nil } }

        it { expect(subject.port_name).to eq(nil) }
      end
    end
  end

  context "#assign_attributes" do
    let(:vessel) { described_class.new }

    before do
      vessel.assign_attributes(name: "Bob" , foo: "some rubbish")
    end

    it "updates the vessel name" do
      expect(vessel.name).to eq("Bob")
    end
  end

  context "::ATTRIBUTES" do
    it { expect(WavesUtilities::Vessel::ATTRIBUTES).to include(:name) }
  end

  context ".attributes_for" do
    subject { described_class.attributes_for(part, fishing_vessel) }

    let(:fishing_vessel) { false }

    context "part_1" do
      let(:part) { :part_1 }

      it { expect(subject).not_to include(:port_no) }
      it { expect(subject).to include(:last_registry_country) }
      it { expect(subject).not_to include(:underlying_registry) }
      it { expect(subject).to include(:smc_issuing_authority) }
      it { expect(subject).not_to include(:entry_into_service_at) }
    end

    context "part_2" do
      let(:part) { :part_2 }

      it { expect(subject).to include(:port_no) }
      it { expect(subject).to include(:last_registry_country) }
      it { expect(subject).not_to include(:underlying_registry) }
      it { expect(subject).not_to include(:smc_issuing_authority) }
      it { expect(subject).to include(:entry_into_service_at) }
    end

    context "part_4" do
      let(:part) { :part_4 }

      it { expect(subject).not_to include(:port_no) }
      it { expect(subject).not_to include(:last_registry_country) }
      it { expect(subject).to include(:underlying_registry) }
      it { expect(subject).to include(:smc_issuing_authority) }
      it { expect(subject).not_to include(:entry_into_service_at) }
    end

    context "part_4 fishing" do
      let(:part) { :part_4 }
      let(:fishing_vessel) { true }

      it { expect(subject).to include(:port_no) }
      it { expect(subject).not_to include(:last_registry_country) }
      it { expect(subject).to include(:underlying_registry) }
      it { expect(subject).to include(:smc_issuing_authority) }
      it { expect(subject).to include(:entry_into_service_at) }
    end
  end
end
