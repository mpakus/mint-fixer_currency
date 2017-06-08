require 'spec_helper'

RSpec.describe Mint::FixerCurrency do
  it { expect(Mint::FixerCurrency::VERSION).not_to be nil }

  it { expect(Mint::FixerCurrency.rates(:USD)).to be_kind_of Hash }
  it { expect(Mint::FixerCurrency.rates(:USD, '2016-03-01')).to be_kind_of Hash }

  it { expect { Mint::FixerCurrency.rates(:BTC) }.to raise_error Mint::FixerCurrency::WrongCurrencyError }
end
