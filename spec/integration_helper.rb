require 'rails_helper'
require 'capybara/poltergeist'
require 'support/support_utilites'

RSpec.configure do |config|
  Capybara.javascript_driver = :poltergeist
  config.use_transactional_fixtures = false
  config.include SupportUtilites

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
