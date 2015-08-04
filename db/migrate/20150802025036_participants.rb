class Participants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :user
      t.string :ticket_number
      t.boolean :rsvp, default:false
      t.integer :guests, default: 1
      t.boolean :table_reservation
      t.timestamps  null: false
    end
  end
end
