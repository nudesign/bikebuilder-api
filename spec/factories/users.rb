# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do

    name "MyString"
    email "mystring@example.com"

    trait :provider do
      provider "MyString"
      uid "MyString"
      oauth_token "MyString"
      oauth_expires_at "2013-10-07 20:40:28"
    end
  end
end
