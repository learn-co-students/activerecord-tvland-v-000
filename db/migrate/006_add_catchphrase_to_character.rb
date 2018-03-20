class AddCatchphraseToCharacter < ActiveRecord::Migration[4.2]
  def change
    #add_column :tablename, :columnname, :type
    add_column :characters, :catchphrase, :string
  end
end
