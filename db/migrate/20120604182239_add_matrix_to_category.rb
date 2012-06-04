class AddMatrixToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :matrix, :boolean, default: false

    Category.all.each do |c|
      c.matrix = false
      c.save
    end
  end
end
