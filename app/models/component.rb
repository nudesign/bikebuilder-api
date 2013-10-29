class Component < ActiveRecord::Base

  # Fields
  # field :model
  # field :cost
  # field :weight

  # Relations
  belongs_to :manufacturer
  belongs_to :type, class_name: 'ComponentType'
  has_and_belongs_to_many :builds
end
