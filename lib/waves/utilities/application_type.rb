module WavesUtilities
  class ApplicationType
    attr_reader :key, :description

    def initialize(key)
      @key = key.to_sym
      application_type = ApplicationType.all.find { |t| t[1] == @key }
      @description = application_type[0] if application_type
    end

    def ==(other)
      @key == other.to_sym
    end

    def registered_vessel_required?
      ![
        :new_registration, :provisional, :transfer_in, :unknown
      ].include?(@key)
    end

    class << self
      def fee_entry
        all.delete_if do |t|
          [:change_address, :closure, :enquiry].include?(t[1])
        end
      end

      def document_entry
        all.delete_if do |t|
          [
            :registrar_closure, :termination_notice, :section_notice,
            :forced_closure, :restore_closed_registration, :unknown
          ].include?(t[1])
        end
      end

      def for_govuk
        [
          :new_registration, :renewal, :change_owner,
          :change_vessel, :change_address, :duplicate_certificate,
          :current_transcript, :historic_transcript, :closure
        ]
      end

      def all
        [
          ["New Registration", :new_registration],
          ["Provisional Registration", :provisional],
          ["Convert Simple Registry to Full Registry", :simple_to_full],
          ["Renewal of Registration", :renewal],
          ["Re-Registration", :re_registration],
          ["Change of Ownership", :change_owner],
          ["Change of Vessel details", :change_vessel],
          ["Change of Address", :change_address],
          ["Registration Closure", :closure],
          ["Current Transcript of Registry", :current_transcript],
          ["Historic Transcript of Registry", :historic_transcript],
          ["Duplicate Certificate", :duplicate_certificate],
          ["General notification / non-fee task", :enquiry],
          ["Registration Closure: Owner Request", :registrar_closure],
          ["Registration Closure: Close Without Notice", :forced_closure],
          ["Registration Closure: 7 Day Notice of Termination", :termination_notice],
          ["Registration Closure: 30 Day Section Notice", :section_notice],
          ["Restore Closed Registration", :restore_closed_registration],
          ["Mortgage(s): Registration", :mortgage],
          ["Mortgage(s): Other", :mortgage_other],
          ["Issue CSR", :issue_csr],
          ["Manual Override", :manual_override],
          ["Unknown", :unknown]]
      end
    end
  end
end
