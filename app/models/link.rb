class Link < ActiveRecord::Base
  belongs_to :category

  validates :category, :presence => true
end
