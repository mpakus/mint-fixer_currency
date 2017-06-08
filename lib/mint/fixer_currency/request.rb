require 'net/http'
require 'json'
require_relative './exceptions'

module Mint
  module FixerCurrency

    # Fetch exchange rates from http://fixer.io
    class Request
      def initialize(currency, date = nil)
        @currency = currency
        @date = date
      end

      # @return Hash
      def perform!
        url = @date ? "http://api.fixer.io/#{@date}?base=#{@currency}" : "http://api.fixer.io/latest?base=#{@currency}"
        parse(fetch(url))
      end

      private

      # @return [String]
      def fetch(url)
        uri = URI(url)
        http = Net::HTTP.new(uri.host, 80)
        request = Net::HTTP::Get.new(uri.request_uri)
        response = http.request(request)
        response.body
      end

      # @return [Hash]
      def parse(body)
        json = JSON.parse(body)
        error = json.fetch('error', nil)
        raise FixerArgumentError, error if error
        Hash[json.fetch('rates', nil).map{ |k, v| [k.to_sym, v] }]
      end
    end
  end
end