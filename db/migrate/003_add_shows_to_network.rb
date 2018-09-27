class AddShowsToNetwork < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :network_id, :integer
  end
end
