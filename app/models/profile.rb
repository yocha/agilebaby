class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :matrices
  def schedules
    Schedule.all.each do |s|
      s.dob = dob
    end
  end
end
