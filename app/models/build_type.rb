# == Schema Information
#
# Table name: build_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class BuildType < ActiveRecord::Base

  # Relations
  has_many :builds
  has_and_belongs_to_many :component_types

end
