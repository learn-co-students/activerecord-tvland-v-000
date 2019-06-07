class AddCharactersToActors < ActiveRecord::Migration[4.2]
  def change
    add_column :actors, :characters, :string
  end
end
