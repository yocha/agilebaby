class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.integer :age
      t.string :data_type
      t.integer :category_id
      t.text :description
      t.string :frequency
      t.boolean :required

      t.timestamps
    end
  end
end
