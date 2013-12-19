class Componet < ActiveRecord::Migration
  def change
    create_table :componets do |t|
      t.string :model
      t.string :cost
      t.string :weight

      t.references :manufacturer
      t.references :componet_type
    end

    add_index :componets, :manufacturer_id
    add_index :componets, :componet_type_id
  end
end
