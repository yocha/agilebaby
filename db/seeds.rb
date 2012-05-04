# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(email: "yocha@yahoo.com", password: "Temp1234")
Task.create(name: 'Feed') unless Task.find_by_name('Feed')
Task.create(name: 'Poop') unless Task.find_by_name('Poop')
Task.create(name: 'Pee') unless Task.find_by_name('Pee')
Event.delete_all
Event.create(task_id: Task.first.id, user_id: User.first.id, start_time: Time.now, duration: 30, comment: "easy")

Category.delete_all
Category.create(:name => 'stuff')
ShoppingItem.delete_all
ShoppingItem.create(:name => 'bottles', :category_id => Category.first.id)

Link.delete_all
Link.create(:url => "http://www.yahoo.com", :category_id => Category.first.id, :title => "Yahoo!")
