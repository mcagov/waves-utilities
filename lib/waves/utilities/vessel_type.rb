module WavesUtilities
  class VesselType
    class << self
      def all(part = :part_3)
        @part = part.to_sym

        list =
          case @part
          when :part_1
            part_1_list
          when :part_2
            part_2_list
          when :part_3
            part_3_list
          when :part_4
            part_4_list
          end
        list.map(&:upcase).freeze
      end

      def part_1_list
        ["General Cargo Ship", "Barge"]
      end

      def part_2_list
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

      def part_4_list
        ["Part Four Vessel Type"]
      end
    end
  end
end
