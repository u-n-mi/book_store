require "open-uri"

puts "Cleaning the DB"

Book.destroy_all
User.destroy_all
Order.destroy_all

puts "Creating a user"

user = User.create(email: "jeff@bezos.com", password: "123456")

puts "creating some books"
url_array = ["https://img.bertrand.pt/images/the-moravian-night-peter-handke/NDV8MjA3NDUxMzF8MTY1OTkxNTh8MTU2NTMwNTIwMDAwMA==/502x",
            "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1575709527142-a93ed587bb83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1516979187457-637abb4f9353?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1529590003495-b2646e2718bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1562232573-0305012a8818?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1476275466078-4007374efbbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1542086260-ddb62f405c8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1490633874781-1c63cc424610?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            "https://images.unsplash.com/photo-1600891656987-eb7803892d8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
          ]
description_array = [ "This books is amazing","you should buy this book","I love this book", "This book is amazing", "I don't need it anymore",
                      "I readed it twice", "Very good to relax", "I just don't want it anymore", "for sale", "For more details contact me!"]

url_array.each do |photo|
  puts photo
  book = Book.create(title: Faker::Book.title,
  author: Faker::Book.author,
  genre: Faker::Book.genre,
  price: rand(10..50),
  description: description_array.sample,
  user: User.first,
  seller: Faker::Name.name)
  file = URI.open(photo)
  book.photo.attach(io: file, filename: '#{photo}.png', content_type: 'image/png')
end

puts "finished!"