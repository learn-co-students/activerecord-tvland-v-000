#* Write a migration that adds the column `catchphrase` to your character model.mh

class AddCatchphraseToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrase, :string
  end
end
