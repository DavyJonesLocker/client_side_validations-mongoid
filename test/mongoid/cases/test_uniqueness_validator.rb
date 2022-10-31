# frozen_string_literal: true

require 'mongoid/cases/test_base'

module Mongoid
  class UniqunessValidatorTest < ClientSideValidations::MongoidTestBase
    def test_uniqueness_client_side_hash
      expected_hash = { message: 'has already been taken' }

      assert_equal expected_hash, UniquenessValidator.new(attributes: [:name]).client_side_hash(@book, :age)
    end

    def test_uniqueness_client_side_hash_allowing_blank
      expected_hash = { message: 'has already been taken', allow_blank: true }

      assert_equal expected_hash, UniquenessValidator.new(attributes: [:author_name], allow_blank: true).client_side_hash(@book, :author_name)
    end

    def test_uniqueness_client_side_hash_with_custom_message
      expected_hash = { message: 'is not available' }

      assert_equal expected_hash, UniquenessValidator.new(attributes: [:name], message: 'is not available').client_side_hash(@book, :age)
    end

    def test_uniqueness_client_side_hash_with_persisted_records
      @book.stubs(:new_record?).returns(false)
      @book.stubs(:id).returns(1)
      expected_hash = { message: 'has already been taken', id: 1 }

      assert_equal expected_hash, UniquenessValidator.new(attributes: [:name]).client_side_hash(@book, :age)
    end

    def test_uniqueness_client_side_hash_with_single_scope_item
      @book.stubs(:author_email).returns('test@test.com')
      expected_hash = { message: 'has already been taken', scope: { author_email: 'test@test.com' } }
      result_hash = UniquenessValidator.new(attributes: [:author_name], scope: :author_email).client_side_hash(@book, :author_name)

      assert_equal expected_hash, result_hash
    end

    def test_uniqueness_client_side_hash_with_multiple_scope_items
      @book.stubs(:age).returns(30)
      @book.stubs(:author_email).returns('test@test.com')
      expected_hash = { message: 'has already been taken', scope: { age: 30, author_email: 'test@test.com' } }
      result_hash = UniquenessValidator.new(attributes: [:author_name], scope: %i[age author_email]).client_side_hash(@book, :author_name)

      assert_equal expected_hash, result_hash
    end

    def test_uniqueness_client_side_hash_with_empty_scope_array
      expected_hash = { message: 'has already been taken' }
      result_hash = UniquenessValidator.new(attributes: [:author_name], scope: []).client_side_hash(@book, :author_name)

      assert_equal expected_hash, result_hash
    end

    def test_uniqueness_client_side_hash_when_nested_module
      @book = MongoidTestModule::Book2.new
      expected_hash = { message: 'has already been taken', class: 'mongoid_test_module/book2' }

      assert_equal expected_hash, UniquenessValidator.new(attributes: [:name]).client_side_hash(@book, :age)
    end
  end
end
