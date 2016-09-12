module WavesUtilities
  class VesselType
    def self.all
      [
        "barge",
        "dinghy",
        "hovercraft",
        "inflatable",
        "motor sailer",
        "motor yacht",
        "narrow boat",
        "sailing yacht",
        "sports boat",
        "wet bike",
      ].map(&:upcase).freeze
    end
  end
end
