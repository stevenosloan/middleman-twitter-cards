module Middleman
  module TwitterCards
    class Card

      class Validator

        def initialize requirements
          @requirements = requirements
        end

        # @param attrs [Hash]
        # @param requirements [Hash]
        # return [Hash] formatted hash based on requirements
        def validate attrs
          attrs if validate_reqs attrs
        end

        private

          def format_reqs
          end

          def validate_reqs attrs
            @requirements.each do |k,v|
              if v
                field = attrs.fetch(k) { |el| raise ArgumentError, "Twitter Cards requires a '#{k}' attribute" }
                if v.class == Array
                  raise ArgumentError, "The field '#{k}' is too long" unless check_length( field, v[1] )
                end
              end
            end
            return true
          end

          def check_length field, length
            return field.length < length
          end

      end

    end
  end
end