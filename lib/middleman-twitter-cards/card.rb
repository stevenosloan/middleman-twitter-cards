module Middleman
  module TwitterCards
    class Card

      # the card object
      # pass it a resource, and it does it's darndest to
      # construct a valid dataset for the twitter card metatags
      #
      # @param fields [Hash] the fields of the card
      def initialize fields
        type = fields.delete(:type) || fields.delete(:card) || "summary"
        fields.merge!({card: type})
        @card = Card::Types.const_get(type.to_s.capitalize).new( fields )
      end

      # the raw data for the card
      # @return [Hash]
      def fields
        @card.fields
      end

      # string of the cards metatags
      # return [String]
      def metatags
        tags = fields.map do |name,value|
          attrs = {
            name: ::Middleman::TwitterCards::Tags.map_name(name),
            content: value
          }
          Render.tag :meta, attrs
        end.join('')

        return tags
      end

      # the og equivalent of the metatags
      def og_metatags
      end

    end
  end
end