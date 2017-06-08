# Mint::FixerCurrency

Gem gives you current and historical foreign exchange rates published by the European Central Bank with http://fixer.io helps.

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
Mint::FixerCurrency.rates(currency, [date])
Mint::FixerCurrency.rates(:USD)
Mint::FixerCurrency.rates(:USD, '2016-03-05')
```

- `currency` (optional) by default :USD, but you can use any of the list :USD, :EUR, :AUD, :RUB...:THB
- `date` (optional) current date by default but you can get the historical currencies from 1999

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mpakus/mint-fixer_currency. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[![CircleCI](https://circleci.com/gh/mpakus/mint-fixer_currency.svg?style=svg)](https://circleci.com/gh/mpakus/mint-fixer_currency)
