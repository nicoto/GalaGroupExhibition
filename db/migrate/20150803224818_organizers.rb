class Organizer < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.references :user
      t.string :title
      t.string :associations
      t.text :biography
      t.string :germinating_statement
      t.string :portrait_url
      t.date :birthdate
      t.timestamps  null: false
    end
  end
end
