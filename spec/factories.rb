require 'Faker'

FactoryGirl.define do
  factory :answer do
    body  { Faker::Lorem.sentence(3)}
  end
end