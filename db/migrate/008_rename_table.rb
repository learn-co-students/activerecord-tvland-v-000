class RenameTable < ActiveRecord::Migration[5.1]

  def change
    rename_table :charaters, :characters
  end

end
