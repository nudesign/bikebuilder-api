class AddPrimaryBooleanFieldToComponentType < ActiveRecord::Migration
  def change
    add_column :component_types, :primary, :boolean
    add_index :component_types, :primary
  end
end
