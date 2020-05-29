# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!([{name: "cat 1"},{name: "cat 2"}])
User.create!([{username: "user 1", email:"user@sa.com"},{username: "user 2",email:"user2@sa.com"},{username: "user 3",email:"user3@sa.com"},{username: "user 4",email:"user4@sa.com"}])
Meme.create!(
  [{title:"meme 1", url_source:"meme1", category: Category.first, user_id: 1 },
  {title:"meme 2", url_source:"meme2", category: Category.first, user_id: 1 },
  {title:"meme 3", url_source:"meme3", category: Category.first, user_id: 1 }])

Comment.create!(
 [ {body:"comment 1", meme_id: 1, user_id: 2},
  {body:"comment 2",  meme_id: 3, user_id: 2},
  {body:"comment 3", meme_id:2, user_id: 2}]
)

