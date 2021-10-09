# frozen_string_literal: true

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require 'simplecov'

SimpleCov.start 'rails' do
  if ENV['CI']
    require 'simplecov-lcov'

    SimpleCov::Formatter::LcovFormatter.config do |c|
      c.report_with_single_file = true
      c.single_report_path = 'coverage/lcov.info'
    end

    formatter SimpleCov::Formatter::LcovFormatter
  end

  add_filter %w[version.rb initializer.rb]
end

require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'
require 'byebug'
require 'mocha/minitest'
require 'rails'

require 'database_cleaner-mongoid'

# MiniTest 4 support
MiniTest::Test = MiniTest::Unit::TestCase unless defined?(MiniTest::Test)

module ClientSideValidations; end
