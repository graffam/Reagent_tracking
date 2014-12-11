class Orders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
        t.integer :user_id, null: false
        t.string :comment
        t.string :neededby
        t.integer :item_id

        t.timestamps
    end
  end
end
