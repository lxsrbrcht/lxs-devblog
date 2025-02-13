# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

User.destroy_all
Project.destroy_all
Post.destroy_all
Comment.destroy_all

puts "creating user"

User.create!(email: "bill@mail", password: "123456")

puts "creating project"

LOGOS = ["Le Devblog", "TableTop Homies"]

LOGOS.each do |logo|
  Project.create!(name: logo, logo: logo + ".png")
end

puts "creating posts"

Project.all.each do |project|
  5.times do
    Post.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph(sentence_count: 3), project_id: project.id)
  end
end
