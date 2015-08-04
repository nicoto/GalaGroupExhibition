class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|

      t.belongs_to :juror, index:true
      t.integer :exhibition_artworks
      t.integer :estimation_criteria_id

      t.timestamps  null: false

    end
  end
end
