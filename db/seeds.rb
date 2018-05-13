# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Category.create(name: "bitcoin")
Category.create(name: "ether")
Category.create(name: "fintech")

puts 'Creating fake posts'

100.times do
  post = Post.create(
    title: Faker::RickAndMorty.character,
    content: Faker::StarWars.quote,
    category: Category.all.sample
    photo: "https://picsum.photos/200/300/?random"
    )
end
puts 'Finished'
