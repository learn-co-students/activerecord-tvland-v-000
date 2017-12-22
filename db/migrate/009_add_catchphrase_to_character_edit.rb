class AddCatchphraseToCharacterEdit < ActiveRecord::Migration
  def change
    add_column :characters, :catchphrase, :string
    remove_column :characters, :catchprase
  end
end
