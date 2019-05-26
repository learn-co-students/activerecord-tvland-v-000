class AddCatchphraseToCharacters < ActiveRecord::Migration[5.2]

def change
  add_column :characters, :catchphrase, :text
end
