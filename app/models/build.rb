class Build < ActiveRecord::Base

  # Fields
  # field :name

  # Relations
  belongs_to :type, class_name: 'BuildType'
  has_and_belongs_to_many :components
end
