# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(email: "yocha@yahoo.com", password: "Temp1234")
Task.delete_all
Task.create(name: "Feed")
Event.delete_all
Event.create(task_id: Task.first.id, user_id: User.first.id, start_time: Time.now, duration: 30, comment: "easy")

Category.delete_all
Category.create(:name => 'stuff')
ShoppingItem.delete_all
ShoppingItem.create(:name => 'bottles', :category_id => Category.first.id)
