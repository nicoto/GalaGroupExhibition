class Artists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :user
      t.string :firstname
      t.string :lastname
      t.text :biography
      t.string :artist_website
      t.string :portrait_url
      t.date :birthdate
      t.text :artist_statement
      t.timestamps  null: false
    end
  end
end
