class Jurors < ActiveRecord::Migration
  def change
    create_table :jurors do |t|
      t.references :user
      t.string :title
      t.string :associations
      t.text :biography
      t.string :manifest
      t.string :portrait_url
      t.date :birthdate
      t.timestamps  null: false
    end
  end
end
