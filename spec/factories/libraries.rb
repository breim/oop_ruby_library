# frozen_string_literal: true

FactoryBot.define do
  factory :library do
    transient do
      shelves_count { 3 }
    end

    initialize_with do
      new(build_list(:shelf, shelves_count))
    end
  end
end
