class BuildType < ActiveRecord::Base

  # Relations
  has_many :builds, class_name: 'Build'
  has_and_belongs_to_many :components, class_name: 'ComponentType'

end
