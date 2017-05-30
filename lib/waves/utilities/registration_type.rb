module WavesUtilities
  class RegistrationType
    class << self
      def in_part(part)
       case part.to_sym
        when :part_1
          [:commercial, :pleasure]
        when :part_2
          [:simple, :full]
        when :part_4
          [:fishing, :commercial, :pleasure]
        end
      end
    end
  end
end
