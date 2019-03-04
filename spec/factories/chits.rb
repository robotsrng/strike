FactoryBot.define do
  factory :chit do
    quantity {Faker::Number.number(1)}
    type_code {Faker::Number.number(2)}
    product_cost {Faker::Number.decimal(2)}
    description {Faker::Lorem.paragraph(2)}
    stock_part
  end

end
