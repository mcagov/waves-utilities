module WavesUtilities
  class DeliveryAddress
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

    ATTRIBUTES = [
      :name,
      :address_1,
      :address_2,
      :address_3,
      :town,
      :postcode,
      :country
    ]

    attr_accessor(*ATTRIBUTES)

    def inline_address
      [
        address_1,
        address_2,
        address_3,
        town,
        country,
        postcode,
      ].compact.reject(&:empty?).join(", ")
    end

    def inline_name_and_address
      "#{name}, #{inline_address}" if name && !inline_address.empty?
    end
  end
end
