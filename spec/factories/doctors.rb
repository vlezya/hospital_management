FactoryBot.define do
  factory :doctor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name}
    phone { Faker::PhoneNumber.cell_phone }
    gender { Faker::Gender.binary_type }
    date_of_birth { Faker::Date.between(from: '1960-09-23', to: '2022-09-25') }
  end
end
