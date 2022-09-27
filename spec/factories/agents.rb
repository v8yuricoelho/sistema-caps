# frozen_string_literal: true

FactoryBot.define do
  factory :agent do
    association :cnes

    name { Faker::Name.name_with_middle }
    email { Faker::Internet.free_email }
    phone { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.street_address }
  end
end
