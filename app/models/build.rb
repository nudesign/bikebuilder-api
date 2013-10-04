class Build
  include Mongoid::Document
  include Mongoid::Timestamps

  # Fields
  field :name

  # Relations
  belongs_to :type, class_name: 'BuildType', inverse_of: 'build'
  has_and_belongs_to_many :components

end
