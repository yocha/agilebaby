class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.datetime :dob
      t.integer :user_id

      t.timestamps
    end
  end
end
