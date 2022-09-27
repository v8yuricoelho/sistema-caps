# frozen_string_literal: true

FactoryBot.define do
  factory :professional do
    association :cnes

    function { Faker::Number.within(range: 0..3) }
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.free_email }
    phone { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.street_address }
  end
end
