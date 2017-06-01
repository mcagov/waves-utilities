module WavesUtilities
  class Customer
    attr_accessor(
      :id,
      :name,
      :address_1,
      :address_2,
      :address_3,
      :town,
      :county,
      :postcode,
      :country,
      :alt_address_1,
      :alt_address_2,
      :alt_address_3,
      :alt_town,
      :alt_county,
      :alt_postcode,
      :alt_country,
      :nationality,
      :email,
      :phone_number,
      :declared_at,
      :registered_customer_id,
      :imo_number,
      :eligibility_status,
      :date_of_incorporation,
      :registration_number,
      :managing_owner,
      :correspondent,
      :shares_held,
      :entity_type,
      :eligibility_status
    )

    def initialize(params = {})
      params.reject! { |param| !respond_to?(param) }
      assign_attributes(params)
    end

    def to_s
      name
    end

    def assign_attributes(params = {})
      params.each { |key, value| instance_variable_set("@#{key}", value) }
    end

    def inline_address
      [
        address_1,
        address_2,
        address_3,
        town,
        postcode,
        country,
      ].compact.reject(&:empty?).join(", ")
    end

    def inline_name_and_address
      "#{name}, #{inline_address}" if name && !inline_address.empty?
    end
  end
end
