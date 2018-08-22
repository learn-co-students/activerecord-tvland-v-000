
class RemoveActoridColumn < ActiveRecord::Migration[4.2]
  def change
    remove_column :characters, :actor_id, :integer, null: false, default: ''
  end
end
