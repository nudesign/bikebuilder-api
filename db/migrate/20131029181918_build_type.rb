class BuildType < ActiveRecord::Migration
  def change
    create_table :build_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
