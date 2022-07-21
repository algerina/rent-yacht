require 'faker'

FactoryBot.define do
  factory :reservation do
    city { Faker::Address.city }
    start_date { Faker::Date.forward(days: 23) }
    days_number { Faker::Number.between(from: 1, to: 7) }
    user_id { Faker::Number.between(from: 1, to: 7) }
    yacht_id { Faker::Number.between(from: 1, to: 7) }
  end
end
