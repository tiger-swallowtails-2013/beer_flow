require 'Faker'

FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.sentence() }
    body  { Faker::Lorem.sentence(3) }
  end
end
