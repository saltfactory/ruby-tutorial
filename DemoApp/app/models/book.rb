class Book < ActiveRecord::Base
  has_many :tags, through: :taggings, autosave: true
  # has_many :taggings, through: :taggable, autosave: true
  has_many :taggings, as: :taggable
end
