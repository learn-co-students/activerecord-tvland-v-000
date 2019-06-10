class AddCatchphrasesToCharacter < ActiveRecord::Migration[4.2]
    add_column :characters, :catchphrase, :text
end