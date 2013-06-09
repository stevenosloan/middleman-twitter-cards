module Middleman
  module TwitterCards
    class Card

      module Render
        extend self

        # @param type [Symbol]
        # @param attrs [Hash]
        # @return [String] a rendered metatag
        def tag type, attrs={}
          tag = "<"
          tag << type.to_s
          tag << render_attrs( attrs )
          tag << "/>"

          return tag
        end

        private

          # @param attrs [Hash]
          # @return [String] the attributes
          def render_attrs attrs={}
            output = " "

            attrs.each do |key,val|
              output << "#{key}='#{val}' "
            end

            return output
          end
      end

    end
  end
end