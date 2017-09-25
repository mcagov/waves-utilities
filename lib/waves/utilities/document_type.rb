class WavesUtilities::DocumentType
  def initialize(code)
    @code = code
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
      case (part || "").to_sym
      when :part_2, :part_3, :part_4
        complete_list.reject { |l| l[1] == "code_certificate" }
      else
        complete_list
      end
    end

    private

    def complete_list
      [
        ["Bill of Sale", "bill_of_sale"],
        ["Builders Certificate", "builders_certificate"],
        ["Carving & Marking Note", "carving_and_marking"],
        ["Code Certificate", "code_certificate"],
        ["Certificate of Survey", "certificate_of_survey"],
        ["Engine Manufacturers Data Sheet(s)", "engine_manufacturers_data_sheet"],
        ["Engine Receipt", "engine_recipient"],
        ["Fishing Vessel Safety Certificate", "fishing_vessel_safety_certificate"],
        ["International Tonnage Certificate", "international_tonnage_certificate"],
        ["MCEP Form", "mcep_form"],
        ["Measurement Certificate", "measurement_certificate"],
        ["Mortgage Deed", "mortgage_deed"],
        ["Other Sale Document", "other_sale_document"],
        ["Seafish Construction Certificate", "seafish_construction_certificate"],
        ["Seafish Inspection Report", "seafish_inspection_report"],
        ["Seafish email from Principal Surveyor", "seafish_email_from_principal_surveyor"],
        ["Written Correspondence", "written_correspondence"],
      ]
    end
  end
end
