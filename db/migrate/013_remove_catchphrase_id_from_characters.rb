class RemoveCatchphraseIdFromCharacters < ActiveRecord::Migration[4.2]
  def change
    remove_column :characters, :catchphrase_id
  end
end
