class Word < ActiveRecord::Base
  attr_accessible :word, :books

  has_and_belongs_to :books
end
