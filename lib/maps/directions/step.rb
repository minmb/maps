module Maps
  module Directions

    class Step < Core::Resource

      coerce_key :transit_details, TransitDetails

    end

  end
end