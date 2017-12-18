class CorrectCatchphraseColumnName < ActiveRecord::Migration
  def change
    rename_column :characters, :catchphrase, :catchphrase
  end
end
