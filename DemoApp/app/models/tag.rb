class Tag < ActiveRecord::Base
  has_many :books, through: :taggings, source: :taggable, source_type: "Book"
  has_many :articles, through: :taggings, source: :taggable, source_type: "Article"
  has_many :taggings

  validates_uniqueness_of :name

end
