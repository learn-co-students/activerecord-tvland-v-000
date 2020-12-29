
class AddNameCharacters < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
    def change
  remove_column :characters, :first_name, :string
  remove_column :characters, :last_name,  :string
  add_column :characters, :name, :string
end
end
