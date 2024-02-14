# frozen_string_literal: true

RSpec.describe Book do
  let(:book) { build(:book) }

  it 'generates a title' do
    expect(book.title).not_to be_nil
  end

  it 'generates an author' do
    expect(book.author).not_to be_nil
  end

  it 'generates a year' do
    expect(book.year.class).to be(Integer)
  end

  it 'generates a valid year' do
    expect(book.year).to be_between(1900, 2020)
  end

  it '.to_s' do
    expect(book.to_s).to eq("#{book.title} by #{book.author} (#{book.year})")
  end
end
