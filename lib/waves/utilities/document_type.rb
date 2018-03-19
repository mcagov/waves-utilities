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
        ["Declaration of Eligibility", :declaration_of_elgibility],
        ["Certificate of Incorporation", :certificate_of_incorporation],
        ["Deletion Certificate or extract", :deletion_certificate],
        ["Certificate of Survey for Tonnage & measurement", :certificate_of_survey],
        ["ITC (if vessel is 24m or more)", :itc],
        ["Coding documents", :coding_documents],
        ["Continuous Synopsis Record", :continous_synopsis_record],
        ["Seafish", :seafish],
        ["Safety Certificate", :safety_certificate],
        ["Engine Spec sheet", :engine_spec_sheet],
        ["Charter Party Agreement", :charter_party_agreement],
        ["Consent Letter", :consent_letter],
        ["Outside UK Water letter (provisional only)", :ouside_uk_water_letter],
        ["Certificate of Incorporation (if applicable)", :certificate_of_incorporation],
        ["Current Certificate of Registry", :current_certificate_of_registry],
        ["Bill of Sale", :bill_of_sale],
        ["Invoice", :invoice],
        ["Builder's Certificate", :builders_certificate],
        ["Written correspondence from the owner(s)", :written_correspondence],
        ["Death Certificate", :death_certificate],
        ["Marriage Certificate", :marriage_certificate],
        ["Other", :other]
      ]
    end
  end
end
