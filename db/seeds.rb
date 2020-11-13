require "open-uri"
require "yaml"

puts "Cleaning DB"
puts "Destroying books"
Book.destroy_all

puts "Destroying users"
User.destroy_all

puts "Destroying orders"
Order.destroy_all

file = "https://github.com/u-n-mi/book_store/blob/master/books.yml"
sample = YAML.load(open(file).read)

puts 'Creating books'
sample["books_to_sell"].each do |book|
  Book.create! book
end

puts 'creating users'
users= {}
sample["users"].each do |user|
  users = User.create!
end

puts 'Creating orders'
sample["books_orders"].each do |order|
  Order.create! order
end

puts 'Finished!'
