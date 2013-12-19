require "spec_helper"

describe BuildType do
  it { should have_db_column(:name) }
  it { should have_many(:builds).class_name('Build') }
  it { should have_and_belong_to_many(:component_types).class_name('ComponentType') }
end
