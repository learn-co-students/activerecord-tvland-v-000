class AddActorIdAndCatchphraseToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrase, :text
    add_column :characters, :actor_id, :integer
  end
end
