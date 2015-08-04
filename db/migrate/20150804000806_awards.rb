class Awards < ActiveRecord::Migration
  def change
    create_table :awards do |t|

      t.belongs_to :vote, index:true
      t.integer :estimation_score
      t.text :critique

    end
  end
end
