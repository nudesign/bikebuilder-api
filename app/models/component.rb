class Component
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :model
  field :cost
  field :weight

  # Relations
  belongs_to :manufacturer
  belongs_to :type, class_name: 'ComponentType', inverse_of: 'component'
  has_and_belongs_to_many :builds

end
