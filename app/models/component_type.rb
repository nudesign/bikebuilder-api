class ComponentType
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :name

  # Relations
  has_many :components, class_name: 'Component', inverse_of: 'type'
  has_and_belongs_to_many :builds, class_name: 'BuildTypes', inverse_of: 'components'
end
