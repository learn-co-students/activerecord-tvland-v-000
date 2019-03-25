#Write a migration for the characters table. A character should have a `name` and a `show_id`––a character will belong to a show. MH

class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
    end
  end
end
