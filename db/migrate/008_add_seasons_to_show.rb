class AddSeasonsToShow < ActiveRecord::Migration
  add_column :shows, :season, :text
end
