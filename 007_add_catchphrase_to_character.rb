class AddCatchphraseToCharacter < ActiveRecord::Migration
  add_column :characters, :catchphrase, :string
end
