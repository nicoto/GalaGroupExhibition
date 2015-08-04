class Exhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|

      t.string :exhibit_name
      t.string :exhibit_subtitle
      t.integer :organizer_id
      #t.date :start_date
      #t.date :end_date

      t.boolean :private_previews default: false
      t.date :preview_date
      t.date :opening_reception
      t.string :website_url
      t.string :flyer_graphic_url

      t.date :art_dropoff_start
      t.date :art_dropoff_deadline

      t.string :dropoff_location
      t.string :address1
      t.string :address2
      t.string :city_town
      t.string :state_province
      t.string :postal_code
      t.string :country

      t.date :art_pickup_start
      t.date :art_pickup_deadline

      t.string :pickup_location
      t.string :address1
      t.string :address2
      t.string :city_town
      t.string :state_province
      t.string :postal_code
      t.string :country
      t.timestamps null: false

    end
  end
end
