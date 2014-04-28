module Maps
  module Directions

    class Leg < Core::Resource

      coerce_key :steps, Step

    end

  end
end