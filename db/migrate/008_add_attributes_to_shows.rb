class AddAttributesToShows < ActiveRecord::Migration
    add_column :shows, :genre, :string
end

