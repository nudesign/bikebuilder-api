# == Schema Information
#
# Table name: builds
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  build_type_id :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :build do
  end
end
