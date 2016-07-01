class AddColumnsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :name, :string
    add_column :characters, :show_id, :integer
  end
end
