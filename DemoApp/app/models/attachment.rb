class Attachment < ActiveRecord::Base
  has_many :comments, as: :commentable, autosave: true
end
