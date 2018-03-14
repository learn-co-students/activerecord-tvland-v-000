class AddToCharacter < ActiveRecord::Migration
  
    def change
      add_column :characters, :actor_id, :integer
      add_column :characters, :show_id, :integer
    end

  end