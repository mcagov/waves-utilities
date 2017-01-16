module WavesUtilities
  class HullConstructionMaterial
    def self.all
      [
        "chocolate",
        "steel",
        "wood",
      ].map(&:upcase).freeze
    end
  end
end
