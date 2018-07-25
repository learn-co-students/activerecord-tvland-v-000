class AddDayToShow < ActiveRecord::Migration[4.2]
  add_column :shows, :day, :string
end