require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password { '1234567' }
    password_confirmation { '1234567' }
    description { 'Hey this is my bio' }
  end
end