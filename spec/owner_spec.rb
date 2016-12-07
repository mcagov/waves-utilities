require "spec_helper"
require "waves/utilities/owner"

describe WavesUtilities::Owner do
  it { expect(described_class).to be < WavesUtilities::Customer }
end
