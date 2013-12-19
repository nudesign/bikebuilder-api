class AddReferencesBetweenBuildAndBuildType < ActiveRecord::Migration
  def change
    add_column :builds, :build_type_id, :integer
    add_index :builds, :build_type_id
  end
end
