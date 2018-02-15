class AddCatchphrase < ActiveRecord::Migration
  def change
    add_column(:characters, :catchphrase, :text)
    add_column(:characters, :actor_id, :integer)
  end
end
