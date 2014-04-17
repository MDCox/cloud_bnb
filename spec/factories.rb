FactoryGirl.define do
  factory :user, :class => User do
    name "Name"
    email { Faker::Internet.email }
    password "password"
    password_confirmation { password }
  end

  factory :property, :class => Property do
    price 100.00
    location "Barbados"
  end
end
