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
  belongs_to :build_type
  has_and_belongs_to_many :components

  def total_cost
    components.inject(0){|sum, c| sum += c.cost.to_f }
  end

  def total_weight
    components.inject(0){|sum, c| sum += c.weight.to_f }
  end

end
