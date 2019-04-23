class CreateCharacters < ActiveRecord::Migration[4.2]

  def change
    create_table :characters do |a|
      a.string   :name
      a.integer  :show_id
    end
  end

end
