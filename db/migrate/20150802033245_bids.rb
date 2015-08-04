class Bids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :participant
      t.string :currency
      t.float :starting_price, :precision => 9, :scale => 2
      t.float :sale_price, :precision => 9, :scale => 2
    end
  end
end
