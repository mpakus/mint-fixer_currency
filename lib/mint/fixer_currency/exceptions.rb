module Mint
  module FixerCurrency
    # Exception for wrong currency name
    class WrongCurrencyError < TypeError
      def initialize(currency)
        super "Can't find #{currency} currency, please setup it with Mint::FixerCurrency.currencies"
      end
    end

    # Error exception came from Fixer.io
    class FixerArgumentError < ArgumentError
      def initialize(msg)
        super "Fixer.io error: #{msg}"
      end
    end
  end
end
