class AddCharactersToShow < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :show_id, :integer
  end
end
