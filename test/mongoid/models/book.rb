class Book
  include Mongoid::Document

  field :age, :type => Integer
  field :author_name, :type => String
  field :author_email, :type => String

  validates :author_email, :author_name, :uniqueness => true
end

class BookInherit < Book; end

module MongoidTestModule
  class BookNested
    include Mongoid::Document

    field :age, :type => Integer
    field :author_name, :type => String
    field :author_email, :type => String

    validates :author_email, :author_name, :uniqueness => true
  end
end
