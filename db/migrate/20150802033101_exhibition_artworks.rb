class ExhibitionArtworks < ActiveRecord::Migration
  def change
    create_table :exhibition_artworks do |t|

      t.belongs_to :awards, index:true
      t.belongs_to :artworks, index:true
      t.date :dropoff_deadline
      t.date :pickup_start_date
      t.date :pickup_end_date
      t.timestamps  null: false

    end
  end
end
