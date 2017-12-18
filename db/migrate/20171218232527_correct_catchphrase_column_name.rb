class CorrectCatchphraseColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :characters, :catchprase, :catchphrase
  end
end
