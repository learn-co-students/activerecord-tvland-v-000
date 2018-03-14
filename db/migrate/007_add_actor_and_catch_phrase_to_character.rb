class AddActorAndCatchPhraseToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :actor_id, :integer
    add_column :characters, :catchphrase, :text
  end

end
