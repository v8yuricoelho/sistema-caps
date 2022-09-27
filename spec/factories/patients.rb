# frozen_string_literal: true

FactoryBot.define do
  factory :patient do
    association :cnes
    association :agent

    medical_record_number { Faker::Number.unique.within(range: 1..500) }
    name { Faker::Name.name_with_middle }
    birthdate { Faker::Date.between(from: 110.years.ago, to: 2.years.ago) }
    gender { Faker::Number.within(range: 0..2) }
    admission_date { Faker::Date.between(from: 10.years.ago, to: Date.today) }
    age { Faker::Number.between(from: 2, to: 110) }
    marital_status { Faker::Number.within(range: 0..3) }
    mother_name { Faker::Name.name_with_middle }
    father_name { Faker::Name.name_with_middle }
    sus_card { Faker::Number.unique.number(digits: 15) }
    cpf { Faker::IDNumber.unique.brazilian_citizen_number }
    rg { Faker::Number.unique.number(digits: 11) }
    adress { Faker::Address.street_address }
    phone { Faker::PhoneNumber.cell_phone }
    status { Faker::Number.within(range: 0..1) }
  end
end
