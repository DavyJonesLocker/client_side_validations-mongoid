# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
else
  require 'simplecov'
  SimpleCov.start 'rails'
end

require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'
if RUBY_VERSION >= '2.0.0'
  require 'byebug'
else
  require 'debugger'
end
require 'mocha/setup'
require 'rails'

# MiniTest 4 support
MiniTest::Test = MiniTest::Unit::TestCase unless defined?(MiniTest::Test)

module TestApp
  class Application < Rails::Application
    config.root = File.dirname(__FILE__)
    config.active_support.deprecation = :log
    config.active_support.test_order = :random
    config.eager_load = false
    config.secret_key_base = '42'
    I18n.enforce_available_locales = true
  end
end

module ClientSideValidations; end
