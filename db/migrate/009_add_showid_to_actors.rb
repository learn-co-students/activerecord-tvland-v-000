class AddShowidToActors < ActiveRecord::Migration[4.2]

  def change
    add_column :actors, :show_id, :integer
  end
end
