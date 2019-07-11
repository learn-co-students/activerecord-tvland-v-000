class ChangeColumnTypeInShows < ActiveRecord::Migration[4.2]
  def change
    change_column :shows, :network_id, :string
  end
end
