require 'capybara/rspec'
require 'capybara'
require 'rspec'
require_relative './features/helper'
require_relative '../app.rb'

Capybara.configure do |config|
  config.run_server = false
  config.server = :webrick
  config.default_driver = :selenium
  config.app = Battle
  config.app_host = "localhost:9292"
end

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  
  config.shared_context_metadata_behavior = :apply_to_host_groups

end
