require 'middleware_helper'
require 'mongoid/cases/helper'

class ClientSideValidationsMongoidMiddlewareTest < MiniTest::Test
  include Rack::Test::Methods

  def setup
    DatabaseCleaner.clean
    ClientSideValidations::Config.stubs(:disabled_validators).returns([])
  end

  def app
    app = proc { [200, {}, ['success']] }
    ClientSideValidations::Middleware::Validators.new(app)
  end

  def test_uniqueness_when_resource_exists
    Book.create(author_email: 'book@test.com')
    get '/validators/uniqueness', 'book[author_email]' => 'book@test.com'

    assert_equal 'false', last_response.body
    assert last_response.ok?
  end

  def test_uniqueness_when_resource_does_not_exist
    get '/validators/uniqueness', 'book[author_email]' => 'book@test.com'

    assert_equal 'true', last_response.body
    assert last_response.not_found?
  end

  def test_uniqueness_when_id_is_given
    book = Book.create(author_email: 'book@test.com')
    get '/validators/uniqueness', 'book[author_email]' => 'book@test.com', 'id' => book.id

    assert_equal 'true', last_response.body
    assert last_response.not_found?
  end

  def test_uniqueness_when_scope_is_given
    Book.create(author_email: 'book@test.com', age: 25)
    get '/validators/uniqueness', 'book[author_email]' => 'book@test.com', 'scope' => { 'age' => 30 }

    assert_equal 'true', last_response.body
    assert last_response.not_found?
  end

  def test_uniqueness_when_multiple_scopes_are_given
    Book.create(author_email: 'book@test.com', age: 30, author_name: 'Brian')
    get '/validators/uniqueness', 'book[author_email]' => 'book@test.com', 'scope' => { 'age' => 30, 'author_name' => 'Robert' }

    assert_equal 'true', last_response.body
    assert last_response.not_found?
  end

  def test_uniqueness_when_case_insensitive
    Book.create(author_name: 'Brian')
    get '/validators/uniqueness', 'book[author_name]' => 'BRIAN', 'case_sensitive' => false

    assert_equal 'false', last_response.body
    assert last_response.ok?
  end

  def test_uniqueness_when_resource_is_a_nested_module
    MongoidTestModule::Book2.create(author_email: 'book@test.com')
    get '/validators/uniqueness', 'mongoid_test_module/book2[author_email]' => 'book@test.com'

    assert_equal 'false', last_response.body
    assert last_response.ok?
  end
end
