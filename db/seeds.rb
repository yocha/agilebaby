# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.delete_all
Task.create(name: "Feed")
Event.delete_all
Event.create(task_id: Task.first.id, start_time: Time.now, duration: 30, comment: "easy")
