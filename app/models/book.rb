class Book < ActiveRecord::Base
  attr_accessible :title, :author_id, :words

  belongs_to :author
  has_and_belongs_to_many :words
end
