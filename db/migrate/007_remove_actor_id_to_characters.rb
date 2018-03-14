class RemoveActorIdToCharacters < ActiveRecord::Migration
  def change
    remove_foreign_key :actors, :characters 
  end 
end