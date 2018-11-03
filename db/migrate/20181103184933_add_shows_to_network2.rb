class AddShowsToNetwork2 < ActiveRecord::Migration[5.1]
  def change
    add_column :networks, :shows, :string
  end
end
