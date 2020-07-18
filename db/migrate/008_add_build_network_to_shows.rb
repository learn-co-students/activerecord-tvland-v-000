class AddBuildNetworkToShows < ActiveRecord::Migration

  def change
    change_table :shows do |t|
      t.string :build_network
    end
  end

end