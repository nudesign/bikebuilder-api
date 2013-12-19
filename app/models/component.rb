class Component < ActiveRecord::Base

  # Relations
  belongs_to :manufacturer
  belongs_to :type, class_name: 'ComponentType', foreign_key: 'component_type_id'
  has_and_belongs_to_many :builds

end
