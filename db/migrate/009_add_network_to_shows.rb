class AddNetworkToShows < ActiveRecord::Migration

  def change
    add_column :shows, :newtork_id, :integer
  end
end
