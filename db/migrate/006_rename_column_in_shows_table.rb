class RenameColumnInShowsTable < ActiveRecord::Migration[4.2]
  def change
    rename_column :shows, :names, :name
  end
end