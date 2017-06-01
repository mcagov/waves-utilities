class WavesUtilities::EligibilityStatus
  class << self
    def all
      [
        ["(a) (i) British citizens, or (ii) non-UK nationals exercising their right of freedom of movement of workers or right of establishment.", :status_a],
        ["(b) Bodies corporate incorporated in a member State with a place of business in the United Kingdom.", :status_b],
        ["(c) European Economic Interest Groupings being groupings formed in pursuance of Article 1 of Council Regulation (EEC) No.2137/85 and registered in the United Kingdom.", :status_c],
        ["(d) A local authority in the United Kingdom.", :status_d],
      ]
    end

    def part_4_non_fishing
      [
        ["(a) British citizens or non-United Kingdom nationals exercising their right of freedom of movement of workers or right of establishment under Article 48 or 52 of the EEC Treaty or Article 28 or 31 of the EEA Agreement", :status_a],
        ["(b) British Dependent Territories citizens", :status_b],
        ["(c) British Overseas citizens", :status_c],
        ["(d) Persons who under the British Nationality Order 1981 are British subjects", :status_d],
        ["(e) Persons who under the Hong Kong (British Nationality) Order 1986 are British Nationals (Overseas)", :status_e],
        ["(f) Bodies corporate incorporated in an EEA state", :status_f],
        ["(g) Bodies corporate incorporated in any relevant British Possession and having their principal place of business in the UK or in any such possession", :status_g],
        ["(h) European Economic Interest Groupings being groupings formed in pursuance of Article 1 of Council Regulation (EEC) No. 2137/85 and registered in the UK", :status_h],
      ]
    end
  end
end
