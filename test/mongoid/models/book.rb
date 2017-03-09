# frozen_string_literal: true
class Book
  include Mongoid::Document

  field :age, type: Integer
  field :author_name, type: String
  field :author_email, type: String

  validates :author_email, :author_name, uniqueness: true
end

module MongoidTestModule
  class Book2 < Book; end
end
