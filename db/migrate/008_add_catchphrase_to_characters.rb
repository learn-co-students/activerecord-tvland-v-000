class AddCatchphraseToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrase, :text
  end
end
