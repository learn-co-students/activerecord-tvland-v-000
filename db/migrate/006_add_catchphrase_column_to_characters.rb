class AddCatchphraseColumnToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :catchprase, :string
  end
end
