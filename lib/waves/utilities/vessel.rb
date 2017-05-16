module WavesUtilities
  class Vessel
    class << self
      def attributes_for(part, fishing_vessel = false)
        @attributes = WavesUtilities::Vessel::ATTRIBUTES
        @part = part.to_sym

        excluded_attributes =
          case part
          when :part_1
            port_no_fields + service_description_fields + underlying_registry_fields
          when :part_2
            underlying_registry_fields + smc_fields
          when :part_4
            if fishing_vessel
              last_registry_fields + smc_fields
            else
              port_no_fields + last_registry_fields + service_description_fields
            end
          end

        @attributes - excluded_attributes
      end

      def port_no_fields
        [:port_no, :ec_number]
      end

      def last_registry_fields
        [:last_registry_country, :last_registry_no, :last_registry_port]
      end

      def underlying_registry_fields
        [:underlying_registry, :underlying_registry_identity_no, :underlying_registry_port]
      end

      def smc_fields
        [:smc_issuing_authority, :smc_auditor, :issc_issuing_authority, :issc_auditor]
      end

      def service_description_fields
        [:entry_into_service_at, :area_of_operation, :alternative_activity]
      end
    end

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

    def alt_names
      [alt_name_1, alt_name_2, alt_name_3].compact
    end

    def type_of_vessel
      if vessel_type_other.to_s.length > 0
        vessel_type_other
      else
        vessel_type
      end
    end

    def other_vessel_type_selected?
      vessel_type == "OTHER"
    end

    def port_name
      WavesUtilities::Port.new(port_code).name if port_code
    end

    def pln
      "#{port_code}#{port_no}"
    end

    ATTRIBUTES = [
      :name,
      :hin,
      :make_and_model,
      :length_in_meters,
      :number_of_hulls,
      :mmsi_number,
      :radio_call_sign,
      :alt_name_1,
      :alt_name_2,
      :alt_name_3,
      :vessel_type,
      :vessel_type_other,

      # added to support part_2 #Identity section
      :registration_type,
      :vessel_category,
      :imo_number,
      :port_code,
      :port_no,
      :last_registry_country,
      :last_registry_no,
      :last_registry_port,
      :underlying_registry,
      :underlying_registry_identity_no,
      :underlying_registry_port,
      :name_on_primary_register,

      # added to support part_2 #Operational Information section
      :classification_society,
      :classification_society_other,
      :entry_into_service_at,
      :area_of_operation,
      :alternative_activity,
      :smc_issuing_authority,
      :smc_auditor,
      :issc_issuing_authority,
      :issc_auditor,

      # added to support part_2 #Description section
      :gross_tonnage,
      :net_tonnage,
      :register_tonnage,
      :register_length,
      :length_overall,
      :breadth,
      :depth,
      :propulsion_system,

      # added to support part_2 #Construction section
      :name_of_builder,
      :builders_address,
      :place_of_build,
      :country_of_build,
      :keel_laying_date,
      :hull_construction_material,
      :year_of_build
    ]

    attr_accessor(*ATTRIBUTES)

  end
end
