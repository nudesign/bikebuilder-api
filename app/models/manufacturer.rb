class Manufacturer < ActiveRecord::Base

  # Relations
  has_many :components

end
