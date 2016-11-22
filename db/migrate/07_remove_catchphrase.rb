class RemoveCatchphrase < ActiveRecord::Migration
  remove_column :characters, :catchphrase
end
