class Artists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :user
      t.string :firstname
      t.string :lastname
      t.text :biography
      t.string :website_url
      t.string :portrait_url
      t.date :birthday
      t.text :artist_statement
      t.timestamps  null: false
    end
  end
end
