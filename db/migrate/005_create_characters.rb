class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |character|
      character.string :name
      character.integer :show_id
      character.integer :actor_id
    end
  end
end