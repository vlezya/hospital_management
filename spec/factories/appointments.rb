FactoryBot.define do
  factory :appointment do
    appointment_date { "2023-02-02 17:09:21" }
    status { 1 }
    description { "MyText" }
    doctor { nil }
    user { nil }
  end
end
