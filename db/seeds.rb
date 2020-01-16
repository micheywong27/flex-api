# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(username: "Flatiron Flexbot")

Post.create(content: "This is my post", comment: "yay", clap: 1, user_id: 6)
Post.create(content: "This is my next post", comment: "yay", clap: 2, user_id: 6)
Post.create(content: "My post is about fitnesss", comment: "yay", clap: 3, user_id: 6)
Post.create(content: "Lets gooooo", comment: "yay", clap: 4, user_id: 6)
Post.create(content: "Go to the gym now", comment: "yay", clap: 5, user_id: 6)
Post.create(content: "Im hungry", comment: "yay", clap: 6, user_id: 6)
Post.create(content: "Food on my mind", comment: "yay", clap: 7, user_id: 6)
Post.create(content: "20 pushups now", comment: "yay", clap: 3, user_id: 6)
Post.create(content: "Get in my belly", comment: "yay", clap: 2, user_id: 6)
Post.create(content: "nom", comment: "yay", clap: 3, user_id: 6)
Post.create(content: "25 mountain climbers yall", comment: "yay", clap: 10, user_id: 6)

