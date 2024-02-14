#  frozen_string_literal: true

FactoryBot.define do
  factory :shelf do
    category { Faker::Book.genre }

    transient do
      books_count { 5 }
    end

    initialize_with do
      new(category, build_list(:book, books_count))
    end
  end
end
