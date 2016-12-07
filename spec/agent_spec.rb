require "spec_helper"
require "waves/utilities"

describe WavesUtilities::Agent do
  it { expect(described_class).to be < WavesUtilities::Customer }
end
