require "spec_helper"

describe WavesUtilities::ApplicationType do
  describe "instance methods" do
    let(:application_type) { described_class.new(key) }

    context "#description" do
      subject { application_type.description }

      context "of a new_registration" do
        let(:key) { :new_registration }
        it { expect(subject).to eq("New Registration") }
      end

      context "of a provisional" do
        let(:key) { :provisional }
        it { expect(subject).to eq("Provisional Registration") }
      end

      context "of a change_vessel" do
        let(:key) { :change_vessel }
        it { expect(subject).to eq("Change of Vessel details") }
      end
    end
  end

  describe "class methods" do
    context ".fee_entry" do
      it do
        [:change_address, :closure].each do |application_type|
          expect(WavesUtilities::ApplicationType.fee_entry)
            .not_to include(application_type)
        end
      end
    end

    context ".document_entry" do
      it do
        [:unknown].each do |application_type|
          expect(WavesUtilities::ApplicationType.fee_entry)
            .not_to include(application_type)
        end
      end
    end
  end
end
