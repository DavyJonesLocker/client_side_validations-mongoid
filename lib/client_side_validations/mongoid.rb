# frozen_string_literal: true

require 'client_side_validations/active_model'

%w[Presence Uniqueness].each do |validator|
  require "client_side_validations/mongoid/#{validator.downcase}"
  Mongoid::Validatable.const_get("#{validator}Validator").send :include, ClientSideValidations::Mongoid.const_get(validator)
end
