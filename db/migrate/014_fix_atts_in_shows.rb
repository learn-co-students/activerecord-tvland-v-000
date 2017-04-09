class FixAttsInShows < ActiveRecord::Migration

  def change
    remove_column :shows, :season
    add_column :shows, :season, :string
  end

end
