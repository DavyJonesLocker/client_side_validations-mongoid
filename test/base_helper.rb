# frozen_string_literal: true

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require 'simplecov'

SimpleCov.start do
  if ENV['CI']
    source_in_json false

    formatter SimpleCov::Formatter::JSONFormatter
  end

  skip %w[version.rb initializer.rb]
end

require 'rubygems'
require 'minitest/autorun'
require 'byebug'
require 'mocha/minitest'
require 'rails'

require 'database_cleaner-mongoid'

module ClientSideValidations; end
