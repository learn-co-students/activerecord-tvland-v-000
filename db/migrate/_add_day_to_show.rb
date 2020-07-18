class AddDayToShows < ActiveRecord::migration
  def change
    add_column :shows, :day, :string
  end
end


  
