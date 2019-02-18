class AddColumnNetworkIdToShows < ActiveRecord::Migration
  def change
    add_column :shows, :network_id, :integer
  end
end
