require "spec_helper"

describe Manufacturer do
  it { should have_db_column(:name) }
  it { should have_many(:components).class_name('Component') }
end
