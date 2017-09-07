FactoryGirl.define do
  factory :event do
    name              { Faker::Lorem.words(3) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          10
    includes_food     true
    includes_drinks   true
    starts_at         { Faker::Time.forward(23, :morning) }
    ends_at           { Faker::Time.forward(23, :evening) }
    active            true

    user              { build(:user) }

  end
end
