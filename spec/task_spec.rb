require "spec_helper"

describe WavesUtilities::Task do
  let(:task) { described_class.new(key) }

  context "#description" do
    subject { task.description }

    context "of a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to eq("New Registration") }
    end

    context "of a change_vessel" do
      let(:key) { :change_vessel }
      it { expect(subject).to eq("Change of Vessel details") }
    end
  end

  context "#declarations_required_on_create?" do
   subject { task.declarations_required_on_create? }

    context "for a re_registration" do
      let(:key) { :re_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

   context "for a renewal" do
     let(:key) { :renewal }
     it { expect(subject).to be_truthy }
   end

    context "for a closure" do
      let(:key) { :closure}
      it { expect(subject).to be_falsey }
    end
  end

  context "#declarations_required_on_add_owner?" do
    subject { task.declarations_required_on_add_owner? }

    context "for a re_registration" do
      let(:key) { :re_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a change_owner" do
      let(:key) { :change_owner }
      it { expect(subject).to be_truthy }
    end

    context "for a change_address" do
      let(:key) { :change_address}
      it { expect(subject).to be_falsey }
    end
  end

  context "electronic_delivery_available?" do
    subject { task.electronic_delivery_available? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_falsey }
    end

    context "for a current_transcript" do
      let(:key) { :current_transcript }
      it { expect(subject).to be_truthy }
    end

    context "for a historic_transcript" do
      let(:key) { :historic_transcript }
      it { expect(subject).to be_truthy }
    end
  end

  context "#ownership_can_be_changed?" do
    subject { task.ownership_can_be_changed? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a re_registration" do
      let(:key) { :re_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a renewal" do
      let(:key) { :renewal }
      it { expect(subject).to be_truthy }
    end

    context "for a change_owner" do
      let(:key) { :change_owner }
      it { expect(subject).to be_truthy }
    end

    context "for a change_vessel" do
      let(:key) { :change_vessel }
      it { expect(subject).to be_falsey }
    end

    context "for a manual_override" do
      let(:key) { :manual_override }
      it { expect(subject).to be_truthy }
    end
  end

  context "#address_can_be_changed?" do
    subject { task.address_can_be_changed? }

    context "for a change_owner" do
      let(:key) { :change_owner }
      it { expect(subject).to be_truthy }
    end

    context "for a change_address" do
      let(:key) { :change_address }
      it { expect(subject).to be_truthy }
    end

    context "for a change_vessel" do
      let(:key) { :change_vessel }
      it { expect(subject).to be_falsey }
    end
  end

  context "#vessel_can_be_edited?" do
    subject { task.vessel_can_be_edited? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a re_registration" do
      let(:key) { :re_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a renewal" do
      let(:key) { :renewal }
      it { expect(subject).to be_truthy }
    end

    context "for a change_owner" do
      let(:key) { :change_owner }
      it { expect(subject).to be_falsey }
    end

    context "for a change_vessel" do
      let(:key) { :change_vessel }
      it { expect(subject).to be_truthy }
    end

    context "for a manual_override" do
      let(:key) { :manual_override }
      it { expect(subject).to be_truthy }
    end
  end

  context "#payment_required?" do
    subject { task.payment_required? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a mortgage" do
      let(:key) { :mortgage }
      it { expect(subject).to be_truthy }
    end

    context "for a closure" do
      let(:key) { [:closure, :change_address].sample }
      it { expect(subject).to be_falsey }
    end
  end

  context "#prints_certificate?" do
    subject { task.prints_certificate? }

    context "for a renewal" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a current transcript" do
      let(:key) { :current_transcript }
      it { expect(subject).to be_falsey }
    end
  end

  context "#prints_current_transcript?" do
    subject { task.prints_current_transcript? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_falsey }
    end

    context "for a closure" do
      let(:key) { :closure }
      it { expect(subject).to be_truthy }
    end
  end

  context "#referrable?" do
    subject { task.referrable? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_truthy }
    end

    context "for a closure" do
      let(:key) { :manual_override }
      it { expect(subject).to be_falsey }
    end
  end

  context "#issues_csr?" do
    subject { task.issues_csr? }

    context "for a new_registration" do
      let(:key) { :new_registration }
      it { expect(subject).to be_falsey }
    end

    context "for a csr" do
      let(:key) { :issue_csr }
      it { expect(subject).to be_truthy }
    end
  end

  context ".finance_task_types" do
    it do
      [:change_address, :closure].each do |task_type|
        expect(WavesUtilities::Task.finance_task_types)
          .not_to include(task_type)
      end
    end
  end

  context ".default_task_types" do
    it do
      [:unknown].each do |task_type|
        expect(WavesUtilities::Task.default_task_types)
          .not_to include(task_type)
      end
    end
  end
end
