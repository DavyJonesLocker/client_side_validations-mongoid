# frozen_string_literal: true

require 'mongoid/cases/test_base'

class Book3 < Book
  validates :author_name, presence: true
end

module Mongoid
  class ValidatableTest < ClientSideValidations::MongoidTestBase
    def setup
      ClientSideValidations::Config.stubs(:disabled_validators).returns([])
    end

    def test_validations_to_client_side_hash
      book = Book3.new

      expected_hash = {
        author_email: {
          uniqueness: [{ message: 'has already been taken' }]
        }, author_name: {
          uniqueness: [{ message: 'has already been taken' }],
          presence:   [{ message: "can't be blank" }]
        }
      }

      assert_equal expected_hash, book.client_side_validation_hash
    end
  end
end
