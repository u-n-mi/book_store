
puts "Cleaning the DB"

Book.destroy_all
User.destroy_all
Order.destroy_all

puts "Creating a user"

user = User.create(email: "jeff@bezos.com",password: "123456")

puts "creating some books"

10.times do
  # BOOK_NAMES = ['LOTR','Harry Potter']
  book = Book.create(title: Faker::Book.title,author: Faker::Book.author ,genre: Faker::Book.genre,price: rand(10..50), description:Faker::Lorem.sentence ,user: User.first)
end

puts "finished!"
