class CreateExhibitionartworks < ActiveRecord::Migration
  def change
    create_table :exhibitionartworks do |t|

      t.timestamps
    end
  end
end
