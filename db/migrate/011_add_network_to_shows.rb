class AddNetworkToShows < ActiveRecord::Migration[4.2]

  def change
    add_column :shows, :network, :string

  end
end
