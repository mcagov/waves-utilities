module WavesUtilities
  class Task
    attr_reader :key

    def initialize(key)
      @key = key.to_sym
    end

    def ==(other)
      @key == other.to_sym
    end

    def description
      Task.all_task_types.find { |t| t[1] == @key }[0]
    end

    def declarations_required_on_create?
      [
        :new_registration, :provisional, :re_registration, :renewal
      ].include?(@key)
    end

    def declarations_required_on_add_owner?
      return true if declarations_required_on_create?
      [:change_owner].include?(@key)
    end

    def electronic_delivery_available?
      [:current_transcript, :historic_transcript].include?(@key)
    end

    def ownership_can_be_changed?
      [
        :new_registration, :provisional, :change_owner, :renewal,
        :re_registration, :manual_override
      ].include?(@key)
    end

    def address_can_be_changed?
      ownership_can_be_changed? || @key == :change_address
    end

    def vessel_can_be_edited?
      [
        :new_registration, :provisional, :change_vessel, :renewal,
        :re_registration, :manual_override, :simple_to_full
      ].include?(@key)
    end

    def payment_required?
      ![
        :change_address, :closure, :enquiry, :termination_notice,
        :simple_to_full,
        :registrar_closure, :registrar_restores_closure, :issue_csr,
        :manual_override].include?(@key)
    end

    def print_job_templates
      if prints_certificate?
        [:registration_certificate, :cover_letter]
      elsif prints_provisional_certificate?
        [:provisional_certificate, :cover_letter]
      elsif prints_current_transcript?
        [:current_transcript]
      elsif prints_historic_transcript?
        [:historic_transcript]
      elsif @key == :issue_csr
        [:csr_form]
      elsif @key == :termination_notice
        [:termination_notice]
      end
    end

    def prints_certificate?
      [
        :new_registration, :change_owner, :change_vessel,
        :simple_to_full, :renewal,
        :duplicate_certificate, :re_registration
      ].include?(@key)
    end

    def prints_provisional_certificate?
      [:provisional].include?(@key)
    end

    def prints_current_transcript?
      [:closure, :current_transcript].include?(@key)
    end

    def prints_historic_transcript?
      [:historic_transcript].include?(@key)
    end

    def duplicates_certificate?
      [:duplicate_certificate].include?(@key)
    end

    def renews_certificate?
      [
        :change_owner, :change_vessel, :renewal, :re_registration,
        :simple_to_full
      ]
        .include?(@key)
    end

    def builds_registry?
      [
        :change_owner, :change_vessel, :change_address,
        :simple_to_full,
        :re_registration, :new_registration, :provisional, :renewal,
        :manual_override, :mortgage, :closure].include?(@key)
    end

    def builds_registration?
      [
        :change_owner, :change_vessel, :provisional,
        :re_registration, :new_registration, :renewal].include?(@key)
    end

    def emails_application_approval?
      [
        :new_registration, :renewal, :re_registration, :provisional,
        :change_owner, :change_vessel, :change_address,
        :simple_to_full,
        :closure, :current_transcript, :historic_transcript,
        :mortgage].include?(@key)
    end

    def emails_application_receipt?
      [
        :new_registration, :renewal, :re_registration, :provisional,
        :change_owner, :change_vessel, :change_address,
        :simple_to_full,
        :closure, :current_transcript, :historic_transcript,
        :duplicate_certificate, :enquiry, :mortgage].include?(@key)
    end

    def referrable?
      ![:manual_override].include?(@key)
    end

    def issues_csr?
      [:issue_csr].include?(@key)
    end

    class << self
      def finance_task_types
        all_task_types.delete_if do |t|
          [:change_address, :closure, :enquiry].include?(t[1])
        end
      end

      def default_task_types
        all_task_types.delete_if do |t|
          [
            :registrar_closure, :termination_notice,
            :registrar_restores_closure, :unknown
          ].include?(t[1])
        end
      end

      def govuk_task_types
        [
          :new_registration, :renewal, :change_owner,
          :change_vessel, :change_address, :duplicate_certificate,
          :current_transcript, :historic_transcript, :closure
        ]
      end

      def validation_helper_task_type_list
        all_task_types.map { |t| t[1].to_s }
      end

      # rubocop:disable Metrics/MethodLength
      def all_task_types
        [
          ["New Registration", :new_registration],
          ["Provisional Registration", :provisional],
          ["Convert simple registry to full registry", :simple_to_full],
          ["Renewal of Registration", :renewal],
          ["Re-Registration", :re_registration],
          ["Change of Ownership", :change_owner],
          ["Change of Vessel details", :change_vessel],
          ["Change of Address", :change_address],
          ["Registration Closure", :closure],
          ["Current Transcript of Registry", :current_transcript],
          ["Historic Transcript of Registry", :historic_transcript],
          ["Duplicate Certificate", :duplicate_certificate],
          ["General Enquiry", :enquiry],
          ["Registration Closure: Owner Request", :registrar_closure],
          ["Registration Closure: Notice of Termination", :termination_notice],
          ["Registrar Restores Closure", :registrar_restores_closure],
          ["Mortgage(s)", :mortgage],
          ["Issue CSR", :issue_csr],
          ["Manual Override", :manual_override],
          ["Unknown", :unknown]]
      end
    end
  end
end
