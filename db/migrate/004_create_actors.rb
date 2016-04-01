class CreateActors<ActiveRecord::Migration

  def change

    create_table :actors do |x|
      x.string :first_name
      x.string :last_name
    end
  end
end