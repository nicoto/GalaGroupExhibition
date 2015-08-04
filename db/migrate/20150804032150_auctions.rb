class Auctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.integer :exhibition_id
      t.integer :artwork_id
      t.float :asking_price, :precision => 9, :scale => 2
      t.float :sell_price, :precision => 9, :scale => 2
      t.datetime :starting_time
      t.datetime :ending_time
      t.string :timezone
    end
  end
end
