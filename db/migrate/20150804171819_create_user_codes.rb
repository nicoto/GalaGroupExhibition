class CreateUserCodes < ActiveRecord::Migration
  def change
    create_table :user_codes do |t|

      t.timestamps
    end
  end
end
