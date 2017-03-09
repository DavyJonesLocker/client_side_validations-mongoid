# frozen_string_literal: true
require 'base_helper'
require 'mongoid'
require 'client_side_validations/mongoid'

Mongoid::Config.load!(File.expand_path('../../config/settings.yml', __FILE__), :test)

# Suppress non-fatal mongoid messages
Mongo::Logger.logger.level = Logger::FATAL

require 'mongoid/models/book'
