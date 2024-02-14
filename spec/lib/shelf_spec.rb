# frozen_string_literal: true

RSpec.describe Shelf do
  let(:shelf) { build(:shelf) }
  let(:book) { build(:book) }

  it 'has a category' do
    expect(shelf.category).not_to be_nil
  end

  it 'has books' do
    expect(shelf.books.size).to eq(5)
  end

  it '#add_book' do
    shelf.books << book
    expect(shelf.books).to include(book)
  end

  it '#remove_book' do
    shelf.remove_book(book)
    expect(shelf.books).not_to include(book)
  end

  it '#list_books' do
    expect(shelf.list_books).to match_array(shelf.books)
  end
end
