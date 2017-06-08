require 'bundler/setup'
require 'mint/fixer_currency'
require 'vcr'
require 'webmock/rspec'

ENV['RACK_ENV'] = 'test'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
WebMock.disable_net_connect!(allow_localhost: true)


RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
