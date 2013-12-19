require "spec_helper"

describe ComponentType do
  it { should have_db_column(:name) }
  it { should have_many(:components).class_name('Component') }
  it { should have_and_belong_to_many(:build_types).class_name('BuildType') }

  describe "primary" do
    it { expect(ComponentType.primary.to_sql).to include "\"component_types\".\"primary\" = 't'" }
  end

  describe "secondary" do
    it { expect(ComponentType.secondary.to_sql).to include "\"component_types\".\"primary\" = 'f'" }
  end
end
