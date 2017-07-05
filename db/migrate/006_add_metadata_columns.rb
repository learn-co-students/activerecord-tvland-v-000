class AddMetadataColumns < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :characters, :catchphrase, :string
    add_column :characters, :actor_id, :integer
  end
end
