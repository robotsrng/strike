FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    phone {Faker::PhoneNumber}
    email {Faker::Internet.email}
    password {'123456ab'}
    password_confirmation{'123456ab'}
    customer_portal
  end
end
