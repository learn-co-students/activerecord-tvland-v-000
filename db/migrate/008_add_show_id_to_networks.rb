class AddShowIdToNetworks < ActiveRecord::Migration
  def change
    add_column :networks, :show_id, :integer
  end
end 
