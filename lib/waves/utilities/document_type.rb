class WavesUtilities::DocumentType
  def initialize(code)
    @code = code.to_sym
  end

  def name
    doc_type =
      WavesUtilities::DocumentType.all.find do |doc_type|
        doc_type[1] == @code
      end
    doc_type ? doc_type[0] : ""
  end

  class << self
    def all(part = nil)
      [
        ["Bill of Sale", :bill_of_sale],
        ["Builder's Certificate", :builders_certificate],
        ["Certificate of Incorporation", :certificate_of_incorporation],
        ["Certificate of Survey for Tonnage & measurement", :certificate_of_survey],
        ["Charter Party Agreement", :charter_party_agreement],
        ["Coding Certificate", :certificate],
        ["Consent Letter", :consent_letter],
        ["Continuous Synopsis Record", :continous_synopsis_record],
        ["Current Certificate of Registry", :current_certificate_of_registry],
        ["Death Certificate", :death_certificate],
        ["Declaration of Eligibility", :declaration_of_elgibility],
        ["Deletion Certificate or extract", :deletion_certificate],
        ["Engine Spec Sheet", :engine_spec_sheet],
        ["Invoice", :invoice],
        ["ITC (if vessel is 24m or more)", :itc],
        ["Marriage Certificate", :marriage_certificate],
        ["Other", :other],
        ["Safety Certificate", :safety_certificate],
        ["Seafish", :seafish],
        ["Outside UK Water letter", :ouside_uk_water_letter],
        ["Written Correspondence from the owner(s)", :written_correspondence]
      ]
    end
  end
end
