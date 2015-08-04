class UserCodes < ActiveRecord::Migration
  def change
    create_table :user_codes do |t|
      t.boolean :curator
      t.boolean :organizer
      t.boolean :ops_staff
      t.boolean :juror
      t.boolean :artist
      t.boolean :participant
    end
  end
end
