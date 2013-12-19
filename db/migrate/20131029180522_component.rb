class Component < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :model
      t.string :cost
      t.string :weight

      t.references :manufacturer
      t.references :componet_type
    end

    add_index :components, :manufacturer_id
    add_index :components, :componet_type_id
  end
end
