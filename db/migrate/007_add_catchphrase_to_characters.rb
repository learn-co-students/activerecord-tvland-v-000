class AddCatchphraseToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :catchphrase, :text
  end
end
