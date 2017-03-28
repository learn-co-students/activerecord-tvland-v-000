class AddDayToShow < ActiveRecord::Migration

  def change
    add_column :shows, :day, :text
  end

end
