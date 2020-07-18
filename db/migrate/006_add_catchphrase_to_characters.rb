class AddCatchphraseToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :catchphrase, :string
  end

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end

end
