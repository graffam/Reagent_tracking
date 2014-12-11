class Listitems < ActiveRecord::Migration
  def change
    create_table :listitems do |t|
      t.integer :order_id, null: false
      t.integer :kit_id
      t.integer :amount
    end
  end
end
