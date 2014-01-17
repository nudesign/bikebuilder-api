# == Schema Information
#
# Table name: components
#
#  id                :integer          not null, primary key
#  model             :string(255)
#  cost              :decimal(5, 2)    default(0.0)
#  weight            :integer
#  manufacturer_id   :integer
#  component_type_id :integer
#

class Component < ActiveRecord::Base

  # Relations
  belongs_to :manufacturer
  belongs_to :component_type
  has_and_belongs_to_many :builds

end
