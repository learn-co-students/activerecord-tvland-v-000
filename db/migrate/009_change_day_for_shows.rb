class ChangeDayForShows < ActiveRecord::Migration[4.2]

  def change
    change_column :shows, :day, :string
  end

end
