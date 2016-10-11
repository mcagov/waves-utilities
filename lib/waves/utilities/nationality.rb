module WavesUtilities
  class Nationality
    class << self
      def all
        raw_list.map(&:first)
      end

      private

      def raw_list
        [
          ['AKROTIRI AND DHEKELIA','British Overseas Territory (British Dependent Territory)'],
          ['ANGUILLA','British Overseas Territory (British Dependent Territory)'],
          ['ANTIGUA BRD','Commonwealth Citizen'],
          ['AUSTRALIA','Commonwealth Citizen'],
          ['AUSTRIA','European Union Country'],
          ['BAHAMAS','Commonwealth Citizen'],
          ['BELGIUM','European Union Country'],
          ['BERMUDA','British Overseas Territory (British Dependent Territory)'],
          ['BRITISH VIRGIN ISLANDS','British Overseas Territory (British Dependent Territory)'],
          ['BULGARIA','European Union Country'],
          ['CANADA','Commonwealth Citizen'],
          ['CAYMAN ISLANDS','British Overseas Territory (British Dependent Territory)'],
          ['CHANNEL ISLANDS','British Citizen'],
          ['CROATIA','European Union Country'],
          ['CYPRUS','European Union Country'],
          ['CZECH REPUBLIC','European Union Country'],
          ['DENMARK','European Union Country'],
          ['DOMINICA','Commonwealth Citizen'],
          ['EIRE','European Union Country'],
          ['ESTONIA','European Union Country'],
          ['FINLAND','European Union Country'],
          ['FRANCE','European Union Country'],
          ['GERMANY','European Union Country'],
          ['GIBRALTAR','British Overseas Territory (British Dependent Territory)'],
          ['GREECE','European Union Country'],
          ['HUNGARY','European Union Country'],
          ['ICELAND','European Economic Area Country'],
          ['INDIA','Commonwealth Citizen'],
          ['ISLE OF MAN','British Citizen'],
          ['ITALY','European Union Country'],
          ['KENYA','Commonwealth Citizen'],
          ['LATVIA','European Union Country'],
          ['LIECHTENSTEIN','European Economic Area Country'],
          ['LITHUANIA','European Union Country'],
          ['LUXEMBOURG','European Union Country'],
          ['MALAYSIA','Commonwealth Citizen'],
          ['MALTA','European Union Country'],
          ['NAURU','Commonwealth Citizen'],
          ['NETHERLANDS','European Union Country'],
          ['NEW ZEALAND','Commonwealth Citizen'],
          ['NIGERIA','Commonwealth Citizen'],
          ['NORWAY','European Economic Area Country'],
          ['POLAND','European Union Country'],
          ['PORTUGAL','European Union Country'],
          ['ROMANIA','European Union Country'],
          ['SINGAPORE','Commonwealth Citizen'],
          ['SLOVAKIA','European Union Country'],
          ['SLOVENIA','European Union Country'],
          ['SOUTH AFRICA','Commonwealth Citizen'],
          ['SPAIN','European Union Country'],
          ['SWEDEN','European Union Country'],
          ['SWITZERLAND','European Economic Area Country'],
          ['TANZANIA','Commonwealth Citizen'],
          ['TRINIDAD & TOBAGO','Commonwealth Citizen'],
          ['TURKEY','European Economic Area Country'],
          ['UNITED KINGDOM','British Citizen'],
        ]
      end
    end
  end
end
