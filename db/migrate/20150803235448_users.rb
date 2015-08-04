class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_code
      t.string :username
      t.string :password_hash
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :home_phone
      t.string :cell_phone
      t.string :address1
      t.string :address2
      t.string :apt
      t.string :city_town
      t.string :state_province
      t.string :postal_code
      t.string :country
    end
  end
end
