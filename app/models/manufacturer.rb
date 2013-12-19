class Manufacturer < ActiveRecord::Base

  # Fields
  # field :name

  # Relations
  has_many :components
end
