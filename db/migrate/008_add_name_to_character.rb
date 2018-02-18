class AddNameToCharacter <ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :name, :string
  end
end
