class AddCharactersToCatchphrase < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrase_id, :integer
  end
end
