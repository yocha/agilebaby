class AddQuickButtonToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :quick_button, :boolean, {:default => false}

  end
end
