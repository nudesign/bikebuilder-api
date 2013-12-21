class Build < ActiveRecord::Base

  # Relations
  belongs_to :user
  belongs_to :build_type
  has_and_belongs_to_many :components

end
