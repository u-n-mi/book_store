puts "Cleaning the DB"

Book.destroy_all
User.destroy_all
Order.destroy_all

puts "Creating a user"

user = User.create(email: "jeff@bezos.com",password: "123456")

puts "creating some books"

10.times do
  book = Book.create(title: Faker::Book.title,author: Faker::Book.author ,genre: Faker::Book.genre,price: rand(10..50), description:Faker::Lorem.sentence ,user: User.first, book_img: Faker::LoremFlickr.image(size: "400x400", search_terms: ['books']), profile_img: Faker::LoremFlickr.image(size: "150x150", search_terms: ['animals', 'dogs'], match_all: true), seller: Faker::Name.name)
end

puts "finished!"
