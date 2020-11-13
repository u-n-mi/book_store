puts "Cleaning the DB"

Book.destroy_all
User.destroy_all
Order.destroy_all

puts "Creating a user"

user = User.create(email: "jeff@bezos.com",password: "123456")

puts "creating some books"
description_array = [ "This books is amazing","you should buy this book","I love this book", "This book is amazing", "I don't need it anymore", ""]
10.times do
  book = Book.create(title: Faker::Book.title,
  author: Faker::Book.author,
  genre: Faker::Book.genre,
  price: rand(10..50),
  description: description_array.sample
  user: User.first,

  seller: Faker::Name.name)
end

puts "finished!"