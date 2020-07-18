class AddColumnDayToShows < ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :day, :string
  end #change

end #class AddColumnDayToShows
