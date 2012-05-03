class AddShoppingItemsToShoppingList < ActiveRecord::Migration
  def change
    Category.delete_all
    ShoppingItem.delete_all
    f = File.open('public/data/shopping_list.txt')
    f.readlines.each do |l|
      name, category, count, required = l.split(',')
      unless Category.find_by_name(category)
        Category.create(name: category)
      end
      unless ShoppingItem.find_by_name(name)
        shopping_item = ShoppingItem.new
        shopping_item.name = name
        shopping_item.category = Category.find_by_name(category)
        shopping_item.suggested_quantity = count
        shopping_item.required  = required.chomp == 'true'
        shopping_item.save
      end
    end
  end
end
