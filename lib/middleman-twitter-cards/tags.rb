module Middleman
  module TwitterCards

    module Tags
      class << self

        # @param fields [Hash]
        # @return [Hash]
        def map_fields fields
          mapped_fields = {}
          fields.each do |k,v|
            mapped_fields[ self.map_name(k.to_s) ] = v
          end
          return mapped_fields
        end

        def map_name name
          tag_name = "twitter:#{name.gsub('_',':')}"
          return tag_name
        end

      end
    end

  end
end