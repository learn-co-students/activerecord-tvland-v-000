class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |g|
      #primary key of :id is created for us!
      g.string :name
    end
  end
end
