# class AddColumnToShows < ActiveRecord::Migration
#   def change
#     add_column :shows do |t|
#       t.string :genre
#     end
#   end
# end

class AddGenreToShow < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
  end
end
