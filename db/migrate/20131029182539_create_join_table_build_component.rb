class CreateJoinTableBuildComponent < ActiveRecord::Migration
  def change
    create_join_table :builds, :components do |t|
      t.index [:build_id, :component_id], unique: true
    end
  end
end
