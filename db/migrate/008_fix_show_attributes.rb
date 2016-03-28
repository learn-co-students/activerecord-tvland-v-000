class FixShowAttributes < ActiveRecord::Migration
  def change
    rename_column :shows, :days, :day
    add_column :shows, :season, :string
  end
end