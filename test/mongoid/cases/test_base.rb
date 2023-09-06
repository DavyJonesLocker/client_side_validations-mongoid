# frozen_string_literal: true

require 'mongoid/cases/helper'

module ClientSideValidations
  class MongoidTestBase < Minitest::Test
    include ::Mongoid::Validatable

    def setup
      DatabaseCleaner.clean
      @book = Book.new
    end
  end
end
