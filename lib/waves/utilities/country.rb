module WavesUtilities
  class Country
    def self.all
      countries = ISO3166::Country.all_translated.map(&:upcase)
      (countries -= ["UNITED KINGDOM"]).insert(0, "UNITED KINGDOM")
    end
  end
end
