module Maps
  module Directions

    class Response < Core::Resource

      coerce_key :routes, Route

    end

  end
end