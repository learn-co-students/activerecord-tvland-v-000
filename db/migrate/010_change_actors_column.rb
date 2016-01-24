class ChangeActorsColumn < ActiveRecord::Migration

  def change
    change_table :actors do |t|
      t.remove :actor_id
    end
  end

end