class RenameCharecterColumnName < ActiveRecord::Migration

  def change
    rename_column :characters, :first_name, :name
  end
end
