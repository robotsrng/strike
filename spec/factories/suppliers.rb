FactoryBot.define do
  factory :supplier do
    name {'Qubica'}
    supplier_code {'qub1'}
    address {' 95 Broadsound Road, Paget, Australia'}
    phone {'0474199593'}
    fax {'0474199593'}
    email {'mail@qubicaamf.com'}
    website {'www.qubicaamf.com'}
  end
end

FactoryBot.define do
  factory :random_supplier do
    name {Faker::Business.name}
    supplier_code {Faker::IDNumber 4}
    address {Faker::Address.full_address}
    phone {Faker::PhoneNumber}
    fax {Faker::PhoneNumber}
    email {Faker::Internet.email}
    website {Faker::Internet.website}
  end

end
