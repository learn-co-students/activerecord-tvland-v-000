class AddForeignKeyToCharactersTable < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key :characters, :actors
  end
end