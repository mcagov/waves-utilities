module WavesUtilities
  class Agent < WavesUtilities::Customer
    def attributes
      {
        name: @name,
        email: @email,
        phone_number: @phone_number,
        address_1: @address_1,
        address_2: @address_2,
        address_3: @address_3,
        town: @town,
        postcode: @postcode,
        country: @country
      }
    end
  end
end
