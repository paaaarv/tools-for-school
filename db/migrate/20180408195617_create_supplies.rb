class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.integer :quantity
      t.float :price
      t.integer :user_id
      t.integer :category_id
      t.timestamps null: false
    end
  end
end
