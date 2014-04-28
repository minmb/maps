require 'faraday'
require 'faraday_middleware'

module Maps
  module Core

    class JsonClient

      def initialize(url, resource_class, options = {})
        @url = url
        @resource_class = resource_class
        @options = options
      end

      def get(path, params = {})
        connection.get(path, params).body
      end

      protected
      def connection
        @connection ||= Faraday.new(url: @url) do |conn|
          conn.response :mashify, mash_class: @resource_class
          conn.response :json, content_type: /\bjson$/
          conn.options.update(@options)
          
          conn.adapter Faraday.default_adapter
        end
      end

    end
  
  end
end