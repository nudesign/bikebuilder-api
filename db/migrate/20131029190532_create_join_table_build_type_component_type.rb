class CreateJoinTableBuildTypeComponentType < ActiveRecord::Migration
  def change
    create_join_table :build_types, :component_types do |t|
      t.index [:build_type_id, :component_type_id], name: 'index_build_types_and_components_type_id', unique: true
    end
  end
end
