FactoryBot.define do
  factory :yacht do
    name { Faker::Name.name }
    price { Faker::Number.between(from: 50.0, to: 100.0) }
    description { Faker::Lorem.paragraph(sentence_count: 2) }
  end
end
