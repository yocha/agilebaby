class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.integer :profile_id
      t.integer :category_id
      t.string :value
      t.string :data_type
      t.datetime :recorded_date

      t.timestamps
    end
  end
end
