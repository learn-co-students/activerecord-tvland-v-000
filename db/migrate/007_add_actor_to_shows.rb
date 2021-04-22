class AddActorToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :show_id, :integer
  end
end