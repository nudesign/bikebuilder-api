class ComponentType < ActiveRecord::Base

  # Fields
  # field :name

  # Relations
  has_many :components, class_name: 'Component'
  has_and_belongs_to_many :builds, class_name: 'BuildType'
end
