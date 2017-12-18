class AddCatchphraseColumnToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :catchprase, :string
  end
end
