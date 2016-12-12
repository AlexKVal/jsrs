require "faker"

FactoryGirl.define do
  factory :post do
    title  { Faker::ChuckNorris.fact }
    body   { Faker::Lorem.paragraph(4, false, 4) }

    trait :published do
      published true
    end

    trait :unpublished do
      published false
    end
  end
end
