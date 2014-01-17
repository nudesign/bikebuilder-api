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

require 'spec_helper'

describe Build do
  it { should respond_to :name }
  it { should belong_to(:build_type).class_name('BuildType') }
end
