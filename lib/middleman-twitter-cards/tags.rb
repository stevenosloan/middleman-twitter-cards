module Middleman
  module TwitterCards

    module Tags
      class << self

        def map_name name
          tag_name = "twitter:#{name.to_s.gsub('_',':')}"
          return tag_name
        end

      end
    end

  end
end