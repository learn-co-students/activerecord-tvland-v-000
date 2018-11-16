class AddNetworkToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :network_id, :string
  end
end
