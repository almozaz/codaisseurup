FactoryGirl.define do
  factory :event do
    name              "Event"
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          10
    includes_food     true
    includes_drinks   true
    starts_at         { Faker::Time.forward(23, :morning) }
    ends_at           { Faker::Time.forward(23, :evening) }

    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
