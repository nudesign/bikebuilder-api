class Component < ActiveRecord::Base

  # Relations
  belongs_to :manufacturer
  belongs_to :component_type
  has_and_belongs_to_many :builds

end
