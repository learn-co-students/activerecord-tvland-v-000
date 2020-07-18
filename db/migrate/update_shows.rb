class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create table :shows do |t|
      t.string name
      t.string genre
    end
  end
end
