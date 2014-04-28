require 'date'

module Maps
  module Directions

    class TransitDetails < Core::Resource

      coerce_key :arrival_stop, :departure_stop, Transit::Stop
      coerce_key :arrival_time, :departure_time, lambda { |v| DateTime.strptime(v.value.to_s, '%s') if v.respond_to?(:value) }

    end

  end
end