module ClientSideValidations; end

require 'client_side_validations/active_model'
require 'client_side_validations/middleware'
require 'client_side_validations/mongoid/middleware'

%w(presence uniqueness).each do |validator|
  require "client_side_validations/mongoid/#{validator}"
  validator.capitalize!
  Mongoid::Validatable.const_get("#{validator}Validator").send :include, ClientSideValidations::Mongoid.const_get(validator)
end

ClientSideValidations::Middleware::Uniqueness.register_orm(ClientSideValidations::Mongoid::Middleware)
