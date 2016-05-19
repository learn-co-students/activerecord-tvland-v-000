class CreateShowsNameAndGenre < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :shows, :characer_id, :integer
    #add_column :shows, :network_id, :integer
  end
end