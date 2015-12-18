require 'base_helper'
require 'action_controller'
require 'action_controller/railtie'
require 'rails'

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

require 'client_side_validations/middleware'
require 'client_side_validations/engine'

TestApp::Application.initialize!
