require 'mint/fixer_currency/version'
require 'mint/fixer_currency/exceptions'

module Mint
  # Access to foreign exchange rates from Fixer.io
  #
  # @author Renat Ibragimov <renat@aomega.co>
  #
  # @see https://github.com/mpakus/mint-fixer_currency
  module FixerCurrency
    # Gets you currency exchange rates
    # @param currency [Symbol, String] based currency
    # @param date [String] YYYY-MM-DD optional date or latest by default
    # @return [Hash]
    def self.rates(currency = :USD, _date = nil)
      currency = currency.to_s.upcase.to_sym
      raise(WrongCurrencyError, currency) unless currencies.include? currency
      {}
    end

    # List of available currencies
    # @return [Array<Symbols>]
    def self.currencies
      %i[AUD BGN BRL CAD CHF CNY CZK DKK GBP HKD HRK HUF IDR ILS INR JPY KRW MXN MYR NOK NZD PHP PLN RON RUB SEK SGD TRY USD ZAR EUR]
    end
  end
end
