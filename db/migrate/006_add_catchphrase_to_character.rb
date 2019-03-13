class AddCatchphraseToCharacter < ActiveRecord::Migration[4.2]
  add_column :characters, :catchphrase, :string
end