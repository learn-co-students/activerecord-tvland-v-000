class AddDayAndSeasonAndGenreToShow < ActiveRecord::Migration
  def change
    add_column(:shows,:day,:text)
    add_column(:shows,:season,:text)
    add_column(:shows,:genre,:text)
  end
end