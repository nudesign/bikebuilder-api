# == Schema Information
#
# Table name: manufacturers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Manufacturer < ActiveRecord::Base

  # Relations
  has_many :components

end
