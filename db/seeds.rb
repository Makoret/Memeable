require 'faker'

puts 'Creating Users'

15.times do
  username = Faker::Internet.username
  email = Faker::Internet.email(name: username)
  User.create!(
    username: username,
    email: email,
    password: '123456',
    password_confirmation: '123456',
  )
end

puts 'Creating Memes'
users = User.all

users.each do |user|
  rand(2..10).times do
    title = Faker::Lorem.sentence
    category_name = Faker::IndustrySegments.sector
    category = Category.find_or_create_by(name: category_name)
    url_source = Faker::Avatar.image
    user.memes.find_or_create_by!(title: title, url_source: url_source, category: category)
  end
end

memes = Meme.all

puts "Creating Comments"
users.each do |user|
  commented_memes = memes.sample(rand(8))
  commented_memes.each do |meme|
    body = Faker::Lorem.sentence
    user.comments.create!(body: body, meme: meme)
  end
end

puts "Creating Votes"
users.each do |user|
  memes = memes.sample(rand(6..10))
  memes.each { |meme| Vote.create!(user: user, meme: meme) }
end
