class AddScheduleToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :schedule, :boolean, default: false

  end
end
