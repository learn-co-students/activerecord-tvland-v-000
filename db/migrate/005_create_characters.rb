#Write a migration for the characters table. A character should have a name and a show_id––a character will belong to a show.
class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |c|
      c.string :name
      c.integer :show_id
    end
  end
end
