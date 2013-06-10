module Middleman
  module TwitterCards
    class Card

      class Summary
        include Validator

        attr_reader :fields

        def initialize attrs={}
          @fields = validate attrs, requirements
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