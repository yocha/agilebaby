class Category < ActiveRecord::Base
  has_many :shopping_items
  has_many :links
  has_many :schedules
end
