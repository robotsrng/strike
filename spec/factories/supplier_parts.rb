
FactoryBot.define do
  factory :supplier_part do
    part_number {Faker::IDNumber.valid}
    name {Faker::Business.name}
    category_code {Faker::Number.number 4}
    description {Faker::Lorem.paragraph(2)}
    supplier_cost {Faker::Number.decimal(2)}
    supplier
  end

end
