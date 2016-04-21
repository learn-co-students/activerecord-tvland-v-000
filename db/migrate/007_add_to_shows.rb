class AddToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :shows, :call_letter, :string
    add_column :shows, :channel, :integer
  end
end
