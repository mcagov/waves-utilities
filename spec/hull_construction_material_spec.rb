require "spec_helper"

RSpec.describe WavesUtilities::HullConstructionMaterial do
  context ".all" do
    subject { described_class.all }

    it "lists the hull_construction_materials" do
      expect(subject).to include("WOOD")
    end
  end
end
