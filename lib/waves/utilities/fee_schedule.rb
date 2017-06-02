class WavesUtilities::FeeSchedule
  PREMIUM_SURPLUS = 5000

  class << self
    def standard_fee
      2500
    end

    def premium_fee
      standard_fee + PREMIUM_SURPLUS
    end
  end
end
