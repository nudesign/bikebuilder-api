# == Schema Information
#
# Table name: builds
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  build_type_id :integer
#

class Build < ActiveRecord::Base

  # Relations
  belongs_to :type, class_name: 'BuildType', foreign_key: 'build_type_id'
  has_and_belongs_to_many :components

end
