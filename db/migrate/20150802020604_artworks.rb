class Artworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.belongs_to :artist, index:true
      t.string :title
      t.text :description
      t.string :materials
      t.string :technique
      t.date :completion_date
      t.text :artist_statement
      t.string :thumbnail_url
      t.string :thumbnail_url
      t.float :height, :scale => 4
      t.float :width, :scale => 4
      t.float :depth, :scale => 4
      t.boolean :sold, default: false
      t.reserve_price, :precision => 9, :scale => 2
      t.timestamps null: false
    end
  end
end
