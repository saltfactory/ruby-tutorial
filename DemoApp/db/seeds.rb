# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.find_or_create_by(subject: "first article") do |article|
  article.tag_names = "t1, t2, t3"
end

Book.find_or_create_by(title: "first book") do |book|
  book.tags << Tag.new(name: "tag1")
end