# frozen_string_literal: true

class Shelf
  attr_accessor :books, :category

  def initialize(category, books = [])
    @category = category
    @books = books
  end

  def add_book(book)
    @books << book
  end

  def remove_book(book)
    @books.delete(book)
  end

  def list_books
    @books
  end
end
