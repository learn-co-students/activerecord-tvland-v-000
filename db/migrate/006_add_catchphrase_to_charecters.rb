class AddCatchphraseToCharecters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrase, :string
    add_column :characters, :actor_id, :string
  end

end
