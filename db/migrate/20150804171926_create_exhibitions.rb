class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|

      t.timestamps
    end
  end
end
