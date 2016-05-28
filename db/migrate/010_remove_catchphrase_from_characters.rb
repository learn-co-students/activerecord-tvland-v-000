class RemoveCatchphraseFromCharacters < ActiveRecord::Migration

  def change
    remove_column :characters, :catchphrase
  end

end
