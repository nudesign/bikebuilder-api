class BuildType
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :name

  # Relations
  has_many :builds, class_name: 'Build', inverse_of: 'type'
end
