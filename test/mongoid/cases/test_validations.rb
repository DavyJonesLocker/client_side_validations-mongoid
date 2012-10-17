require 'mongoid/cases/test_base'

class Mongoid::UniqunessValidatorTest < ClientSideValidations::MongoidTestBase
  class ::Book3 < Book
    validates :author_name, :presence => true
  end

  def test_validations_to_client_side_hash
    book = Book3.new

    expected_hash = {
      :author_email => {
        :uniqueness=> [{:message=>"is already taken"}]
      }, :author_name=> {
        :uniqueness => [{:message=>"is already taken"}],
        :presence => [{:message=>"can't be blank"}]
      }
    }

    assert_equal expected_hash, book.client_side_validation_hash
  end
end
