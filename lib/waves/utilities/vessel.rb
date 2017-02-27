module WavesUtilities
  class Vessel

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
      :ec_number,
      :last_registry_country,
      :last_registry_no,
      :last_registry_port,

      # added to support part_2 #Operational Information section
      :classification_society,
      :classification_society_other,
      :entry_into_service_at,
      :area_of_operation,
      :alternative_activity,

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
      :keel_laying_date,
      :hull_construction_material,
      :yard_number,
      :year_of_build
    ]

    attr_accessor(*ATTRIBUTES)

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
  end
end
