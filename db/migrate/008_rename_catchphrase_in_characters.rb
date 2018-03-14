class RenameCatchphraseInCharacters < ActiveRecord::Migration[4.2]

  def change
    rename_column :characters, :catchprase, :catchphrase
  end
end 
