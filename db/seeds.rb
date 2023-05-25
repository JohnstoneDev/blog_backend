# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Topics"

fiction = Topic.create(name: 'fiction')
philosophy = Topic.create(name: 'Philosophy')
reading = Topic.create(name: 'Reading')
reviews = Topic.create(name: 'Book Reviews')
tech = Topic.create(name: 'Tech & Programming')

puts "Finished creating Topics"

sleep(2);


puts "Creating Posts"

hamlet = Post.create(title: "Review of Hamlet", content: "The tragedy of Hamlet, prince of Denmark", topic_id: reviews.id)
tides = Post.create(title: "Tides of Sorrow", content: "Story for another day", topic_id: philosophy.id)
typescript = Post.create(title: "Typescript", content: "My thought on typescript", topic_id: tech.id)
camus = Post.create(title: "Albert Camus", content: "The outsider & The Stranger", topic_id: reading.id)
house = Post.create(title: "House of the Dragon", content: "Fire & Blood", topic_id: fiction.id)

puts "Finished creating Posts"
