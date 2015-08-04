class Bids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :participant
      t.references :auction
      t.string :currency
      t.float :offer, :precision => 9, :scale => 2
    end
  end
end
