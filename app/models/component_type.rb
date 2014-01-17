# == Schema Information
#
# Table name: component_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  primary    :boolean
#

class ComponentType < ActiveRecord::Base

  # Relations
  has_many :components
  has_and_belongs_to_many :build_types

  # Scopes
  scope :primary,   -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

end
