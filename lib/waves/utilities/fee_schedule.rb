class WavesUtilities::FeeSchedule
  PREMIUM_SURPLUS = 5000

  class << self
    def standard_fee(part = :part_3)
      case part.to_sym
      when :part_1 then 2500
      when :part_2 then 2500
      when :part_3 then 2500
      when :part_4 then 2500
      end
    end

    def premium_fee(part = :part_3)
      standard_fee(part) + PREMIUM_SURPLUS
    end
  end
end
