class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |el|
      el.string :first_name
      el.string :last_name
    end
  end
end
