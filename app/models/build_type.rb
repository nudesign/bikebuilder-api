class BuildType < ActiveRecord::Base

  # Relations
  has_many :builds
  has_and_belongs_to_many :component_types

end
