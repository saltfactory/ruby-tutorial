class Article < ActiveRecord::Base
  has_many :tags, through: :taggings, autosave: true
  has_many :taggings, as: :taggable
  # has_many :taggings, through: :taggable, autosave: true

  attr_writer :tag_names

  def tag_names
    self.tags.map(&:name).join(',')
  end

  after_save do
    self.tags = self.tag_names.split(/[ ,]+/).map { |tag_name| Tag.find_or_create_by!(name: tag_name) } if self.tag_names
  end

end
