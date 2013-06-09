module Middleman
  module TwitterCards
    class Card

      # the card object, our "god" object for the gem
      # pass it a resource, and it does it's darndest to
      # construct a valid dataset for the twitter card metatags
      #
      def initialize
      end

      # the raw data for the card
      def data
      end

      # string of the cards metatags
      def metatags
      end

      # the og equivalent of the metatags
      def og_metatags
      end

      class Data
        # i'm a card's data, I can be smart too
        def initialize
        end
      end

    end
  end
end