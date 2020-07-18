class AddCatchphraseCorrectly < ActiveRecord::Migration

def change
  remove_column :characters, :catch_phrase
  add_column :characters, :catchphrase, :string
end

end
