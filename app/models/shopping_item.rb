class ShoppingItem < ActiveRecord::Base
  acts_as_list
  belongs_to :category
end
