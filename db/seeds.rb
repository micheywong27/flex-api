# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(id: 1, username: "Flatiron Flexbot")

Post.destroy_all
Post.create(id: 1, content: "This is my post", comment: "yay", clap: 1, user_id: 1, nutrition: true)
Post.create(id: 2, content: "This is my next post", comment: "yay", clap: 2, user_id: 1, nutrition: true)
Post.create(id: 3, content: "My post is about fitnesss", comment: "yay", clap: 3, user_id: 1, nutrition: false)
Post.create(id: 4, content: "Lets gooooo", comment: "yay", clap: 4, user_id: 1, nutrition: false)
Post.create(id: 5, content: "Go to the gym now", comment: "yay", clap: 5, user_id: 1, nutrition: false)
Post.create(id: 6, content: "Im hungry", comment: "yay", clap: 1, user_id: 1, nutrition: true)
Post.create(id: 7, content: "Food on my mind", comment: "yay", clap: 7, user_id: 1, nutrition: true)
Post.create(id: 8, content: "20 pushups now", comment: "yay", clap: 3, user_id: 1, nutrition: false)
Post.create(id: 9, content: "Get in my belly", comment: "yay", clap: 2, user_id: 1, nutrition: true)
Post.create(id: 10, content: "nom", comment: "yay", clap: 3, user_id: 1, nutrition: true)
Post.create(id: 11, content: "25 mountain climbers yall", comment: "yay", clap: 10, user_id: 1, nutrition: true)

Favorite.destroy_all
Favorite.create(user_id: 1, post_id: 1)
Favorite.create(user_id: 1, post_id: 2)
Favorite.create(user_id: 1, post_id: 3)
Favorite.create(user_id: 1, post_id: 7)
Favorite.create(user_id: 1, post_id: 8)
Favorite.create(user_id: 1, post_id: 9)

Clap.destroy_all
Clap.create(user_id: 1, post_id: 1)
Clap.create(user_id: 1, post_id: 3)
Clap.create(user_id: 1, post_id: 7)
Clap.create(user_id: 1, post_id: 10)
Clap.create(user_id: 1, post_id: 11)

Comment.destroy_all
Comment.create(comment: "Congrats!", user_id: 1, post_id: 1)
Comment.create(comment: "How did you do that?!", user_id: 1, post_id: 3)
Comment.create(comment: "Great job. Keep it going!", user_id: 1, post_id: 5)
Comment.create(comment: "Ok, let's aim for Saturday...", user_id: 1, post_id: 7)