module WavesUtilities
  class Nationality
    class << self
      def all
        nationalities =
          (ISO3166::Country.all.map(&:nationality) - ["", nil]).map(&:upcase)

        (nationalities -= ["BRITISH"]).insert(0, "BRITISH")
      end
    end
  end
end
