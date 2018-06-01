class AddActorsToCharacter < ActiveRecord::Migration[5.1]

    def change
        add_column :actors, :character_id, :integer
        add_column :actors, :shows_id, :integer
    end

end