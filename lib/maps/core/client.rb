module Maps
  module Core

    class Client

      def initialize(options = {})
        @api_key = options.delete(:api_key)
        @client = JsonClient.new(api_url, response_resource, **options)
      end

      protected
      def get(params = {})
        params = params.dup
        params[:sensor] = false
        params[:key] = @api_key if @api_key

        @client.get("/maps/api/#{api_name}/json", params)
      end

      def api_url
        "https://maps.googleapis.com"
      end

    end

  end
end