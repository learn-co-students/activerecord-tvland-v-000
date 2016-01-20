class AddRelationshipsToObjects < ActiveRecord::Migration
  add_column :characters, :actor_id, :integer
end 