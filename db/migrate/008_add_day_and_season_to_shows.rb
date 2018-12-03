class AddDayAndSeasonToShows < ActiveRecord::Migration[4.2]
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string

  end
end
