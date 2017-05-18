class AddShowId < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.integer :show_id
    end
  end
end
