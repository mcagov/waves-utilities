require "spec_helper"

describe WavesUtilities::Owner do
  it { expect(described_class).to be < WavesUtilities::Customer }
end
