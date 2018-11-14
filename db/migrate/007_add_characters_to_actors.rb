class AddCharactersToActors < ActiveRecord::Migration[5.1]

  def change
    add_column :actors, :characters, :string
  end

end
