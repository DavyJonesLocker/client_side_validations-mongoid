require 'mongoid/cases/helper'

module ClientSideValidations
  class MongoidTestBase < MiniTest::Test
    include ::Mongoid::Validatable

    def setup
      DatabaseCleaner.clean
      @book = Book.new
    end
  end
end
