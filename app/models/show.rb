class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors = []
        array_of_actors = self.actors.map {|actor| actor.full_name}
    end

end

