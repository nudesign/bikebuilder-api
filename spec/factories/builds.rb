# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :build do
    name "MyString"

    build_type

    trait :with_user do
      user
    end
  end
end
