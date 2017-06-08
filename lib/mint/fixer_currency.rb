require 'mint/fixer_currency/version'

module Mint
  # Access to foreign exchange rates from Fixer.io
  module FixerCurrency
    def self.rates(_currency = :USD, _date = nil)
      {}
    end
  end
end
