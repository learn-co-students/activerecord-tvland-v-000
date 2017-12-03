class AddCatchphraseToCharacters < ActiveRecord::Migration
  add_column :characters, :catchphrase, :string
end
