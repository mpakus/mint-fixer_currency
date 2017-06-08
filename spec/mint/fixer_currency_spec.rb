RSpec.describe Mint::FixerCurrency, :vcr do
  it { expect(Mint::FixerCurrency::VERSION).not_to be nil }

  it { expect(Mint::FixerCurrency.rates(:USD)).to be_kind_of Hash }
  it { expect(Mint::FixerCurrency.rates(:USD, '2016-12-23')).to be_kind_of Hash }

  it { expect { Mint::FixerCurrency.rates(:BTC) }.to raise_error Mint::FixerCurrency::WrongCurrencyError }
  it { expect { Mint::FixerCurrency.rates(:USD, '201-12-23') }.to raise_error Mint::FixerCurrency::FixerArgumentError }

  it { Mint::FixerCurrency.rates.each { |k, _v| expect(k).to be_kind_of Symbol } }
  it { Mint::FixerCurrency.rates.each { |_k, v| expect(v).to be_kind_of Float } }
end
