class WavesUtilities::PropulsionSystem
  class << self
    def all
      [
        "None (dumb)",
        "Sail (auxiliary motor only)",
        "Sail and motor",
        "Steam",
        "Outboard diesel",
        "Outboard petrol",
        "Internal diesel",
        "Internal petrol"
      ]
    end
  end
end

