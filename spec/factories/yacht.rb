require 'faker'

FactoryBot.define do
  factory :yacht do
    sequence(:name) { Faker::Name.name }
    sequence(:price) { Faker::Number.between(from: 50.0, to: 100.0) }
    sequence(:description) { Faker::Lorem.paragraph(sentence_count: 2) }
  end
end
