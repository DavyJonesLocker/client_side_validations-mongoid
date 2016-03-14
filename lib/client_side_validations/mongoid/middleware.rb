module ClientSideValidations
  module Mongoid
    class Middleware
      def self.class?(klass)
        klass < ::Mongoid::Document
      end

      # Still need to handle embedded documents
      def self.unique?(klass, attribute, value, params)
        if params[:case_sensitive] == 'false'
          value = Regexp.new("^#{Regexp.escape(value.to_s)}$", Regexp::IGNORECASE)
        end

        criteria = klass.where(attribute => value)
        criteria = criteria.where(_id: { '$ne' => params[:id] }) if params[:id]

        (params[:scope] || {}).each do |scope_key, scope_value|
          criteria = criteria.where(scope_key => scope_value)
        end

        criteria.empty?
      end
    end
  end
end
