class FixColumnNameCharacters < ActiveRecord::Migration
  def change
    rename_column :characters, :catchprase, :catchphrase
  end
end