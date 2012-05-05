class MakeUserAdmin < ActiveRecord::Migration
  def up
    u = User.first
    u.admin = true
    u.save
  end

  def down
  end
end
