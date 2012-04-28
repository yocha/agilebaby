class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :task_id
      t.datetime :start_time
      t.integer :duration
      t.text :comment

      t.timestamps
    end
  end
end
