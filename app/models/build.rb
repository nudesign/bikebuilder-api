class Build < ActiveRecord::Base

  # Relations
  belongs_to :type, class_name: 'BuildType', foreign_key: 'build_type_id'
  has_and_belongs_to_many :components

end
