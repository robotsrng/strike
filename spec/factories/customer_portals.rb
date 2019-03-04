
FactoryBot.define do
  factory :customer_portal do
    company_name {Faker::Business.name}
    company_phone {Faker::PhoneNumber}
    company_email {Faker::Internet.email}
  end

end
