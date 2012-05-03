class AddDataToTasks < ActiveRecord::Migration
  def change
    Task.create(name: 'Feed') unless Task.find_by_name('Feed')
    Task.create(name: 'Poop') unless Task.find_by_name('Poop')
    Task.create(name: 'Pee') unless Task.find_by_name('Pee')
  end
end
