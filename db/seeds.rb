# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
number = [16,17,18,19,20]
number.each do |n|
    #blog = Blog.create!(title: Faker::Creature::Horse.name, content: Faker::Lorem.paragraph_by_chars, publisher:Faker::Name.name)
    Comment.create!(commenter: Faker::Name.name, comment_text: Faker::Quote.matz, blog_id: n)
end