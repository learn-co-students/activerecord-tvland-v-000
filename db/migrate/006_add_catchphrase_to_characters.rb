class AddCatchphraseToCharacters < ActiveRecord::Migration
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    add_column :characters, :catchphrase, :string
  end
end
