FactoryGirl.define do
  factory :user do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }
    username {Faker::Internet.user_name}
    password "password"
    password_confirmation "password"
  end
end