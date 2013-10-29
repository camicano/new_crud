class Author < ActiveRecord::Base
  attr_accessible :name, :books

  has_many :books
end
