# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.create!(
  name: "Ben",
  surname: "Smosh",
)

Author.create!(
  name: "Morios",
  surname: "Lokit",
)

Author.create!(
  name: "Baul",
  surname: "Smith",
)


Book.create!(
  title:"First book title",
  publisher: "Book New Yourk publisher",
  number_of_pages: 15,
  date_of_publication: "12-03-2019 12:30:14",
  author_id: 2
)

Book.create!(
  title:"My great book",
  publisher: "My great service",
  number_of_pages: 15,
  date_of_publication: "05-04-2016 12:44:50",
  author_id: 1
)

Book.create!(
  title:"Book Milan publisher",
  publisher: "Other publisher",
  number_of_pages: 15,
  date_of_publication: "03-01-2011 05:06:44",
  author_id: 2
)

puts "3 book items created"
