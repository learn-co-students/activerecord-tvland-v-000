
class AddActorsToShows < ActiveRecord::Migration
  def change
    add_column :actors, :show_id, :integer
  end
end
