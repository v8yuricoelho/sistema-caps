# frozen_string_literal: true

FactoryBot.define do
  factory :cnes do
    code { Faker::Number.unique.number(digits: 7) }
    unity { Faker::Educator.unique.university }
  end
end
