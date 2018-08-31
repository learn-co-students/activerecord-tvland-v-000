class AddCatchphraseToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :catchphrase, :text
  end
end
