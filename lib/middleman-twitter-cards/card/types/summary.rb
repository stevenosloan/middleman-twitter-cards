module Middleman
  module TwitterCards
    class Card
      module Types

        class Summary

          attr_reader :fields

          def initialize attrs={}
            @validator = Validator.new requirements
            @fields = @validator.validate attrs
          end

          def requirements
            {
              card: true,
              title: [ true, 70 ],
              description: [ true, 200 ],
              img_src: false,
              site: false,
              creator: false
            }
          end

        end

      end
    end
  end
end