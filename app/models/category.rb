class Category < ActiveRecord::Base
  has_many :shopping_items
end
