require 'spec_helper'

describe Build do
  it { should respond_to :name }
  it { should belong_to(:user) }
  it { should belong_to(:build_type).class_name('BuildType') }
end
