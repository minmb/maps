module Maps
  module Directions
    module Transit

      class Line < Core::Resource

        coerce_key :agencies, Agency

      end

    end
  end
end