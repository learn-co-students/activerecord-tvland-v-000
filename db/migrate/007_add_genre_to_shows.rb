class AddGenreToShows < ActiveRecord::Migration
    
    def change
        add_column :shows, :genre, :string
    end# of change
    
end# of class 