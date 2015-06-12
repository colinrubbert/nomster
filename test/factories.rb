FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com"}
      password "87654321"
      password_confirmation "87654321"
  end
  factory :comment do
    message "This place is awesome!"
    rating "1_star"
    association :place
    association :user
  end
  factory :place do
    name "El Dorado"
    address "555 West Hollywood Blvd"
    description "Best damn chimichanga in the world!"
    latitude (42.0)
    longitude (15.0)
    association :user
  end
end
