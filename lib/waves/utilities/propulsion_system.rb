class WavesUtilities::PropulsionSystem
  def initialize(code)
    @code = code.to_sym
  end

  def name
    ret =
      WavesUtilities::PropulsionSystem.all.find do
        |propulsion_system| propulsion_system[1] == @code
    end
    ret ? ret[0] : ""
  end

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

