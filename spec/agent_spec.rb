require "spec_helper"

describe WavesUtilities::Agent do
  it { expect(described_class).to be < WavesUtilities::Customer }
  it { expect(described_class).respond_to?(:attributes) }
end
