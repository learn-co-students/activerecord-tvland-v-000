class CreateDaysForShows < ActiveRecord::Migration
  def change
    add_column :shows, :days, :string
  end
end