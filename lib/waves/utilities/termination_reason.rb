module WavesUtilities
  class TerminationReason
    class << self
      def all
        [
          "56(1)(aa) the registered owner has not notified the Registrar that ownership of the ship has changed",
          "56(1)(b)  the ship no longer being eligible to be registered",
          "56(1)(d)  taking into account any requirements of the Merchant Shipping Acts (including any instrument made under them) relating to the condition of the ship or its equipment so far as relevant to its safety or to any risk of pollution or to the safety, health and welfare persons employed or engaged in any capacity on board the ship, he considers that it would be inappropriate for the ship to remain registered",
          "56(1)(e)  when a registered fishing vessel which has been licensed to fish ceases to be so licensed for a continuous period of 6 months or more",
          "56(1)(f) when a fishing vessel which requires a licence to fish but at the time of registration did not have such a licence and has not acquired such a licence within 6 months of the issue of its certificate of registry",
          "56(1)(g)  when any penalty imposed on the owner of a ship in respect of a contravention of the Merchant Shipping Acts, or of any instrument in force under those Acts, has remained unpaid for a period of more than 3 months (and no appeal against that penalty is pending)",
          "56(1)(h)  when any summons for any such contravention has been duly served on the owner of a ship but the owner has failed to appear at the time and place appointed for the trial of the information or complaint in question and a period of not less than 3 months has elapsed since that time.",
          "56(1)(i)  except in the case of a fishing vessel below 24 metres in length to which Part IIA of the Tonnage Regulations does not apply, when the tonnage of a fishing vessel has not been measured in accordance with those Regulations, or though so measured, that information has not been notified to the Registrar",
          "56(1)(j)  where the owner of a fishing vessel fails to respond to the Registrar within 15 days of a request from him to supply information concerning details on the Register of a fishing vessel",
          "56(1)(k)  where the owner of a fishing vessel supplies information requested by the Registrar, but that information is either false or incorrect, or is reasonably considered by the Registrar to be insufficient",
          "56(1)(l)  where a fishing vessel certificate has expired",
          "56(1)(m)  where under regulation 50 a person is required to notify the Registrar, or make an application, and has not done so",
          "56(1)(n)  where under regulation 51 a person is required to make an application, and has not done so",
        ]
      end
    end
  end
end
