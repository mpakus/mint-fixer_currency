# Mint::FixerCurrency

Gem gives you current and historical foreign exchange rates published by the European Central Bank with http://fixer.io helps.

This gem can be helpful used with Mint::Money https://rubygems.org/gems/mint-money for full exchange process.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mint-fixer_currency'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mint-fixer_currency

## Usage

```ruby
require 'mint/fixer_currency'

Mint::FixerCurrency.rates
 => {:AUD=>1.3234, :BGN=>1.7436, :BRL=>3.2713, :CAD=>1.3448, :CHF=>0.96666, :CNY=>6.798, :CZK=>23.461, :DKK=>6.6316, :GBP=>0.77479, :HKD=>7.7937, :HRK=>6.6023, :HUF=>275.17, :IDR=>13301.0, :ILS=>3.5457, :INR=>64.347, :JPY=>109.46, :KRW=>1124.5, :MXN=>18.221, :MYR=>4.2605, :NOK=>8.4713, :NZD=>1.3907, :PHP=>49.544, :PLN=>3.7366, :RON=>4.0744, :RUB=>56.624, :SEK=>8.7325, :SGD=>1.3817, :THB=>34.025, :TRY=>3.5435, :ZAR=>12.865, :EUR=>0.8915}
Mint::FixerCurrency.rates(currency, [date])
Mint::FixerCurrency.rates(:USD)
Mint::FixerCurrency.rates(:USD, '2016-03-05')
```

- `currency` (optional) :USD is by default and you can use any of the list :USD, :EUR, :AUD, :RUB...:THB
- `date` (optional) YYYY-MM-DD, current date is by default but you can get any historical currencies from 1999

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mpakus/mint-fixer_currency. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[![CircleCI](https://circleci.com/gh/mpakus/mint-fixer_currency.svg?style=svg)](https://circleci.com/gh/mpakus/mint-fixer_currency)
