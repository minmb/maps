require 'date'

module Maps
  module Directions

    class Client < Core::Client

      def drive(from:, to:)
        routes(origin: from, destination: to, mode: :driving)
      end

      def walk(from:, to:)
        routes(origin: from, destination: to, mode: :walking)
      end

      def bicycle(from:, to:)
        routes(origin: from, destination: to, mode: :bicycling)
      end

      def transit(from:, to:, arrival_time: nil, departure_time: DateTime.now)

        params = {
          origin: from,
          destination: to,
          mode: :transit,
          departure_time: departure_time.to_time.utc.to_i
        }

        params[:arrival_time] = arrival_time.to_time.utc.to_i if arrival_time

        routes(params)
      end

      def routes(params = {})
        get(params).routes
      end

      protected
      def api_name
        'directions'        
      end

      def response_resource
        Response
      end

    end

  end
end