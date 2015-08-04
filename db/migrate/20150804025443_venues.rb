class Venues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :exhibition_name
      t.date :start_date
      t.date :end_date
      t.string :est_name
      t.string :est_phone

      t.string :primary_contact_fname
      t.string :primary_contact_lname
      t.string :primary_contact_phone
      t.string :primary_contact_email

      t.string :secondary_contact_fname
      t.string :secondary_contact_lname
      t.string :secondary_contact_phone
      t.string :secondary_contact_email

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
