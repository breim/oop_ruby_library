# frozen_string_literal: true

RSpec.describe Library do
  let(:library) { build(:library) }
  let(:shelf) { build(:shelf) }
  let(:book) { build(:book) }
  let(:another_book) { build(:book, title: 'The batman returns', author: 'Herman Melville', year: 1851) }

  it '#add_shelf' do
    library.add_shelf(shelf)
    expect(library.shelves).to include(shelf)
  end

  it '#add_book_to_shelf' do
    library.add_book_to_shelf(book, shelf)
    expect(shelf.books).to include(book)
  end

  it '#add_book_to_shelf(book, shelf)' do
    shelf.add_book(book)
    expect(shelf.books).to include(book)
  end

  context '#remove_book' do
    it 'when the book exist in library' do
      library.remove_book(book.title)
      expect(shelf.books).not_to include(book)
    end

    it 'when the book does not exist in library' do
      remove_book = library.remove_book(another_book.title)
      expect(remove_book).to eql("Book #{another_book.title} not found in any shelf.")
    end
  end

  it '#list_all_books' do
    expect(library.list_all_books).to match_array(library.shelves.map(&:list_books).flatten)
  end
end
