class CreateShoppingItems < ActiveRecord::Migration
  def change
    create_table :shopping_items do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.integer :suggested_quantity
      t.boolean :required, :default => false

      t.timestamps
    end
  end
end
