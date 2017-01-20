require 'client_side_validations/active_model'
require 'client_side_validations/middleware'
require 'client_side_validations/mongoid/middleware'

ClientSideValidations::Middleware::Uniqueness.register_orm(ClientSideValidations::Mongoid::Middleware)

%w(Presence Uniqueness).each do |validator|
  require "client_side_validations/mongoid/#{validator.downcase}"
  Mongoid::Validatable.const_get("#{validator}Validator").send :include, ClientSideValidations::Mongoid.const_get(validator)
end
