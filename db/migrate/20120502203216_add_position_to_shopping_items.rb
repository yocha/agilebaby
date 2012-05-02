class AddPositionToShoppingItems < ActiveRecord::Migration
  def change
    add_column :shopping_items, :position, :integer

  end
end
