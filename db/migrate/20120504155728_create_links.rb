class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.boolean :confirmed, :default => false
      t.integer :category_id

      t.timestamps
    end
  end
end
