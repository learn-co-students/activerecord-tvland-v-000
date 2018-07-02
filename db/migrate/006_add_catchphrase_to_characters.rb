class AddCatchphraseToCharacters < ActiveRecord::Migration[5.0]

  def change
    add_column :characters, :catchphrase, :string
  end

end
