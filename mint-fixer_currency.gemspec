# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mint/fixer_currency/version'

Gem::Specification.new do |spec|
  spec.name          = 'mint-fixer_currency'
  spec.version       = Mint::FixerCurrency::VERSION
  spec.authors       = ['Renat Ibragimov']
  spec.email         = ['mrak69@gmail.com']

  spec.summary       = 'Mint::FixerCurrency gem gives you access to foreign exchange rates from Fixer.io'
  spec.description   = 'Current and historical foreign exchange rates published by the European Central Bank'
  spec.homepage      = 'https://github.com/mpakus/mint-fixer_currency'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'pry', '~> 0.10'
end
