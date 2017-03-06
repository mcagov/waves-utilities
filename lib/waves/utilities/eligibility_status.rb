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
  end
end
