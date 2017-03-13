class WavesUtilities::PropulsionSystem
  class << self
    def all
      [
        ["None (dumb)", :none],
        ["Sail (auxiliary motor only)", :sail],
        ["Sail and motor", :sail_and_motor],
        ["Steam", :steam],
        ["Outboard diesel", :outboard_diesel],
        ["Outboard petrol", :outboard_petrol],
        ["Internal diesel", :inboard_diesel],
        ["Internal petrol", :inboard_petrol]
      ]
    end
  end
end

