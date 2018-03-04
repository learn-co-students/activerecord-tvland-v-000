class CreateActors < ActiveRecord::Migration[4.2]

  def change
    create_table :actors do |a|
      a.string   :first_name
      a.string   :last_name
    end
  end
end
