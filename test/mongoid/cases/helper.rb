require 'base_helper'
require 'mongoid'
require 'client_side_validations/mongoid'

Mongoid::Config.load!(File.expand_path('../../config/settings.yml', __FILE__), :test)

require 'mongoid/models/book'

