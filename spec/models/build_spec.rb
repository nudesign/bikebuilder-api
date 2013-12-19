require 'spec_helper'

describe Build do
  it { should respond_to :name }
  it { should belong_to(:type).class_name('BuildType').with_foreign_key('build_type_id') }
end
