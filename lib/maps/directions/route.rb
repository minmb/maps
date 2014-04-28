module Maps
  module Directions

    class Route < Core::Resource

      coerce_key :legs, Leg

    end

  end
end