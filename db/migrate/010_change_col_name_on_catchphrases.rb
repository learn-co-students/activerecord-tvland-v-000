class ChangeColNameOnCatchphrases < ActiveRecord::Migration[4.2]
  def change
    rename_column :catchphrases, :actor_id, :character_id
  end
end
