class BuildType
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :name

  # Relations
  has_many :builds, class_name: 'Build', inverse_of: 'type'
  has_and_belongs_to_many :components, class_name: 'ComponentType', inverse_of: 'builds'
end
