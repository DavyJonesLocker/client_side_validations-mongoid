require 'mongoid/cases/helper'

class ClientSideValidations::MongoidTestBase < MiniTest::Test
  include Mongoid::Validatable

  def setup
    DatabaseCleaner.clean
    @book = Book.new
  end
end
