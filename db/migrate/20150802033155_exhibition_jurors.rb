class ExhibitionJurors < ActiveRecord::Migration
  def change
    create_table :exhibition_jurors do |t|
      t.belongs_to :jurors, index:true
      t.belongs_to :exhibitions, index:true
      t.timestamps  null: false
    end
  end
end
