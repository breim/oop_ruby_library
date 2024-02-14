# frozen_string_literal: true

class Library
  attr_accessor :shelves

  def initialize(shelves = [])
    @shelves = shelves
  end

  def add_shelf(shelf)
    @shelves << shelf
  end

  def add_book_to_shelf(book, shelf)
    shelf.add_book(book)
  end

  def remove_book(title)
    @shelves.each do |shelf|
      book = shelf.books.find { |filter_book| filter_book.title == title }
      shelf.remove_book(book) if book
    end
    "Book #{title} not found in any shelf."
  end

  def list_all_books
    @shelves.map(&:list_books).flatten
  end
end
