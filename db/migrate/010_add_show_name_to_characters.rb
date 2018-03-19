class AddShowNameToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :show, :string
  end
end
