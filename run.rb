# frozen_string_literal: true

require 'faker'
# Include lib dir
Dir[File.join(File.dirname(__FILE__), './lib/**/*.rb')].sort.each do |file|
  require file
end

# Create books
books = []
10.times { |_book| books << Book.new(Faker::Book.title, Faker::Book.author, rand(1900..2020)) }

# Shelves
shelf_fiction = Shelf.new('Science Fiction', [books[0], books[1], books[2]])
puts '----Shelf#add_book----'
shelf_fiction.add_book(books[3])

puts '----Shelf#remove_book----'
shelf_fiction.remove_book(books[2])

puts '----Shelf#list_books----'
puts shelf_fiction.list_books

# Library
puts '----Library#add_shelf----'
library = Library.new([shelf_fiction])
shelf_drama = Shelf.new('Drama', [books[4], books[5], books[6]])
library.add_shelf(shelf_drama)

puts '----Library#add_book_to_shelf----'
library.add_book_to_shelf(books[7], shelf_fiction)

puts '----Library#remove_book----'
library.remove_book(books[2])
library.remove_book(books[4])

puts '----Library#list_all_books----'
puts library.list_all_books

puts "found #{library.list_all_books.size} in library and shelves"
