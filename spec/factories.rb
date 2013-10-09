require 'Faker'

FactoryGirl.define do
  factory :answer do
    body  { Faker::Lorem.sentence(3)}
  end

  factory :question do
    title { Faker::Lorem.sentence() }
    body  { Faker::Lorem.sentence(3) }
  end

  factory :user do
    username { Faker::Internet.user_name }
    password "foobar"
    password_confirmation "foobar"
  end
end
