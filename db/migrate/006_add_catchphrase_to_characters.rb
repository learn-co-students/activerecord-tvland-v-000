class AddCatchphraseToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :catchphrase, :integer
  end
end
