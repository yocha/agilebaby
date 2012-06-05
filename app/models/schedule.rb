class Schedule < ActiveRecord::Base
  attr_accessor :dob
  belongs_to :category
  def due_date
    raise "no DoB" if dob.nil?
    dob + age.send(data_type.to_sym)
  end
end
