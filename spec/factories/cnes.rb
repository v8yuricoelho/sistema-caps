# frozen_string_literal: true

FactoryBot.define do
  factory :cnes do
    code { Faker::Number.unique.number(digits: 7) }
    unity { Faker::Address.unique.secondary_address }
  end
end
