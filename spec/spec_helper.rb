ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require_relative '../app'
require 'rspec'
require 'rack/test'
require 'capybara'
require 'capybara/rspec'

Capybara.app = App.new
Capybara.default_driver = :selenium
Capybara.server = :webrick

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
end
