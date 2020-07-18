class AddActorId < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.integer :actor_id
    end
  end
end
