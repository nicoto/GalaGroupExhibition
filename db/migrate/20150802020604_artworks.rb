class Artworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.belongs_to :artist, index:true
      t.string :title
      t.text :work_statement
      t.string :materials
      t.string :technique
      t.date :year_of_make
      t.string :thumbnail_url
      t.string :image1_url
      t.string :image2_url
      t.string :image3_url
      t.string :detail_url
      t.float :height, :scale => 4
      t.float :width, :scale => 4
      t.float :depth, :scale => 4
      t.boolean :framed
      t.boolean :sold, default: false
      t.float :reserve_price, :precision => 9, :scale => 2
      t.timestamps null: false
    end
  end
end
