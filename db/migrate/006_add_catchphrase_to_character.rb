class AddCatchphraseToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :character, :catchphrase, :string
  end
end
