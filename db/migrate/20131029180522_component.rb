class Component < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :model
      t.decimal :cost, precision: 5, scale: 2,  default: 0
      t.integer :weight

      t.references :manufacturer
      t.references :component_type
    end

    add_index :components, :manufacturer_id
    add_index :components, :component_type_id
  end
end
