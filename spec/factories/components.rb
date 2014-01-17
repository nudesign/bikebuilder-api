# == Schema Information
#
# Table name: components
#
#  id                :integer          not null, primary key
#  model             :string(255)
#  cost              :decimal(5, 2)    default(0.0)
#  weight            :integer
#  manufacturer_id   :integer
#  component_type_id :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :component do
    model "MyString"
    cost 999.99
    weight 19
  end
end
