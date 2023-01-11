# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Movie.destroy_all
rating_var = (0..10).to_a

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating: rating_var.sample
  )
  movie.save
end
