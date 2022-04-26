require "capybara"
require "capybara/cucumber"

require_relative "helpers.rb"

World(Helpers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end