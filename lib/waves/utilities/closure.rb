module WavesUtilities
  class Closure
    REASONS =
      [
        :sold,
        :destroyed,
        :registered_elsewhere,
        :other,
      ].freeze

    INTERNAL_REASONS =
      [
        :failed_to_renew,
        :no_longer_eligible,
      ].freeze

    attr_accessor(
      :reason,
      :current_step,
      :actioned_day,
      :actioned_month,
      :actioned_year,
      :new_owner_name,
      :new_owner_email,
      :new_owner_phone_number,
      :destruction_method,
      :new_flag,
      :new_flag_reason)
  end
end
