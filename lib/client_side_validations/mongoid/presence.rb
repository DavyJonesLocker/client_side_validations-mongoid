# frozen_string_literal: true
module ClientSideValidations
  module Mongoid
    module Presence
      private

      def message_type
        :blank
      end
    end
  end
end
