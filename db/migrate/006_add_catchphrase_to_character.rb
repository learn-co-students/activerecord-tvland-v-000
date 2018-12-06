class AddCatchphraseToCharacter < ActiveRecord::Migration[5.1]
  add_column :characters, :catchphrase, :string
end
