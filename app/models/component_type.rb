class ComponentType < ActiveRecord::Base

  # Relations
  has_many :components, class_name: 'Component'
  has_and_belongs_to_many :builds, class_name: 'BuildType'

  # Scopes
  scope :primary,   -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

end
