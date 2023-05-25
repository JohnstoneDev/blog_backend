# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "DELETING ALL DATABASE ENTRIES"


fiction = Topic.create(name: 'fiction')
philosophy = Topic.create(name: 'Philosophy')
reading = Topic.create(name: 'Reading')
reviews = Topic.create(name: 'Book Reviews')
tech = Topic.create(name: 'Tech & Programming')