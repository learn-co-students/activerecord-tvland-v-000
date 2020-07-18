class AddCatchPhraseAndActorId < ActiveRecord::Migration

  #define a change method in which to do the migration
  def change
    add_column :characters, :catchphrase, :string
    add_column :characters, :actor_id, :integer
  end
end
