class Jurors < ActiveRecord::Migration
  def change
    create_table :jurors do |t|
      t.references :user
      t.text :biography
      t.string :statement_of_interest
      t.string :portrait_url
      t.date :birthdate
      t.timestamps  null: false
    end
  end
end
