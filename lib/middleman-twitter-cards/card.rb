module Middleman
  module TwitterCards
    class Card

      # the card object, our "god" object for the gem
      # pass it a resource, and it does it's darndest to
      # construct a valid dataset for the twitter card metatags
      #
      # @param type [Symbol] typ of card
      def initialize type=:summary
        @card = Card::Types.const_get(type.to_s.capitalize).new
      end

      # the raw data for the card
      def fields
      end

      # string of the cards metatags
      def metatags
        tags = fields.map do |field|
          Render.tag :meta, field
        end

        return tags
      end

      # the og equivalent of the metatags
      def og_metatags
      end

    end
  end
end