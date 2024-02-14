# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    year { rand(1900..2020) }

    initialize_with { new(title, author, year) }
  end
end
