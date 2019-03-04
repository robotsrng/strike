
FactoryBot.define do
  factory :stock_part do
    part_number {Faker::IDNumber.valid}
    name {Faker::Business.name}
    category_code {Faker::Number.number 4}
    description {Faker::Lorem.paragraph(2)}
    stock_cost {Faker::Number.decimal(2)}
    minimum_qty {Faker::Number.number(1)}
    maximum_qty {Faker::Number.number(3)}
    restock_to_level {Faker::Number.number(2)}
    customer_portal
  end

end
