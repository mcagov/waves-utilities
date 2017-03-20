module WavesUtilities
  class VesselType
    class << self
      def all(part = :part_3, fishing_vessel = false)
        @part = part.to_sym

        list =
          case @part
          when :part_1
            part_1_list
          when :part_2
            fishing_list
          when :part_3
            part_3_list
          when :part_4
            fishing_vessel ? fishing_list : part_1_list
          end
        list.map(&:upcase).freeze
      end

      private

      def part_1_list
        ["Bulk carrier",
         "Combination carrier",
         "Containership",
         "Chemical tanker",
         "Commercial Yacht",
         "Dredger ",
         "Factory ship",
         "Fishing Vessel",
         "FPSO",
         "General cargo/ multi purpose ship",
         "Gas carrier",
         "Heavy load carrier",
         "High speed cargo craft",
         "High speed passenger craft",
         "Livestock Carrier",
         "Mobile offshore drilling unit",
         "Mobile offshore units",
         "NLS Tanker",
         "Oil tanker",
         "Offshore service vessel",
         "Other types of ship",
         "Pleasure Vessel",
         "Passenger ship",
         "Ro-Ro cargo ship",
         "Ro-Ro passenger vessel",
         "Refrigerated cargo carrier",
         "Special purpose ship",
         "Sail Training Vessel",
         "Small Commercial Vessel",
         "Tug"]
      end

      def fishing_list
        ["Fishing Vessel"]
      end

      def part_3_list
        [
          "Barge",
          "Dinghy",
          "Hovercraft",
          "Inflatable",
          "Motor Sailer",
          "Motor Yacht",
          "Narrow Boat",
          "Sailing Yacht",
          "Sports Boat",
          "Wet Bike",
          "Other"
        ]
      end
    end
  end
end
