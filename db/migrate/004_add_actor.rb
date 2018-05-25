class AddActor < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |a|
      #primary key of :id is created for us!
      a.string :first_name
      a.string :last_name
    end
  end
end
