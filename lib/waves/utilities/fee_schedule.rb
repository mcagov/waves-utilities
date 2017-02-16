class WavesUtilities::FeeSchedule
  class << self
    def standard_fee(part = :part_3, _task = :new_registration)
      2500 if part == :part_3
    end

    def premium_fee(part = :part_3, task = :new_registration)
      standard_fee(part, task) + 5000
    end
  end
end
