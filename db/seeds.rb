# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

data = []
CSV.foreach('db/seed_files/book.csv', quote_char: "'", force_quotes: true, headers: true) do |row| # meter aqui path do csv extraido do excel
  a = row.to_hash
  a["created_at"] = DateTime.now
  a["updated_at"] = DateTime.now
  data << a
end
Book.insert_all(data) #Book table

data = []
CSV.foreach('db/seed_files/order.csv', quote_char: "'", force_quotes: true, headers: true) do |row| # meter aqui path do csv extraido do excel
  a = row.to_hash
  a["created_at"] = DateTime.now
  a["updated_at"] = DateTime.now
  data << a
end
Order.insert_all(data) #Order table

data = []
CSV.foreach('db/seed_files/user.csv', quote_char: "'", force_quotes: true, headers: true) do |row| # meter aqui path do csv extraido do excel
  a = row.to_hash
  a["created_at"] = DateTime.now
  a["updated_at"] = DateTime.now
  data << a
end
User.insert_all(data) # User table

