module ClientSideValidations::Mongoid
  class Middleware

    def self.is_class?(klass)
      klass < ::Mongoid::Document
    end

    # Still need to handle embedded documents
    def self.is_unique?(klass, attribute, value, params)
      if params[:case_sensitive] == 'false'
        value = Regexp.new("^#{Regexp.escape(value.to_s)}$", Regexp::IGNORECASE)
      end

      criteria = klass.where(attribute => value)
      criteria = criteria.where(_id: {'$ne' => params[:id]}) if params[:id]

      (params[:scope] || {}).each do |key, value|
        criteria = criteria.where(key => value)
      end

      !criteria.exists?
    end
  end
end
