require 'client_side_validations/active_model'
require 'client_side_validations/middleware'
require 'client_side_validations/mongoid/middleware'

%w{presence uniqueness}.each do |validator|
  require "client_side_validations/mongoid/#{validator}"
  validator.capitalize!
  eval "Mongoid::Validations::#{validator}Validator.send(:include, ClientSideValidations::Mongoid::#{validator})"
end

ClientSideValidations::Middleware::Uniqueness.register_orm(ClientSideValidations::Mongoid::Middleware)

