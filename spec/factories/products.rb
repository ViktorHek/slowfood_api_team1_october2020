FactoryBot.define do
  factory :product do
    title { "MyString" }
    ingredients { "MyString" }
    price { 1 }
    association :category
  end
end
