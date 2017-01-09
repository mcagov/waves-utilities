module WavesUtilities
  class RegistrationType
    def self.all
      [
        :simple,
        :full,
        :provisional,
      ].freeze
    end
  end
end
