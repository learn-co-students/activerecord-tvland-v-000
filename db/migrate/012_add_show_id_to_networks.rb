class AddShowIdToNetworks < ActiveRecord::Migration[4.2]

  def change
    add_column :networks, :show_id, :integer
  end

end
