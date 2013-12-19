# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :component do
    model "MyString"
    cost 999.99
    weight 19
  end
end