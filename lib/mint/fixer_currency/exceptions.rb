module Mint
  module FixerCurrency
    # Exception for wrong currency name
    class WrongCurrencyError < TypeError
      def initialize(currency)
        super "Can't find #{currency} currency, please setup it with Mint::FixerCurrency.currencies"
      end
    end
  end
end
