class Criteria < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :thematic
      t.string :rubric
      t.text :description
      t.timestamps  null: false
    end
  end
end
