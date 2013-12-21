require 'spec_helper'

describe User do
  it { have_db_column :name }
  it { should have_many(:builds).class_name('Build') }
end
