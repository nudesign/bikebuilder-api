# == Schema Information
#
# Table name: manufacturers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require "spec_helper"

describe Manufacturer do
  it { should have_db_column(:name) }
  it { should have_many(:components).class_name('Component') }
end
