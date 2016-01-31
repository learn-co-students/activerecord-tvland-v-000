class ChangeActors < ActiveRecord::Migration
  def change
    change_table :actors do |t| 
      t.remove :first_name, :last_name
    end
  end
end