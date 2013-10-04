class ComponentType
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :name

  # Relations
  has_many :components, class_name: 'Component', inverse_of: 'type'
end
