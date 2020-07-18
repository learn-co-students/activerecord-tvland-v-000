class AddCatchphrase < ActiveRecord::Migration

def up
  add_column :characters, :catch_phrase, :string
end

def down
  remove_column :characters, :catch_phrase
end

end
