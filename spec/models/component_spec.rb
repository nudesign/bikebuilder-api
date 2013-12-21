require "spec_helper"

describe Component do
  it { should have_db_column(:model) }
  it { should have_db_column(:cost).of_type(:decimal).with_options(precision: 5) }
  it { should have_db_column(:weight).of_type(:integer) }

  it { should belong_to(:manufacturer).class_name('Manufacturer') }
  it { should belong_to(:component_type).class_name('ComponentType') }
  it { should have_and_belong_to_many(:builds).class_name('Build') }
end
