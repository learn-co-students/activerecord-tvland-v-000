class Show < ActiveRecord::Base
    has_many   :characters
    has_many   :actors, through: :characters
    has_one    :genre
    belongs_to :network

    def genre
         genre = Genre.create(genre: Dramedy)

         self.genre = genre
         self.genre
    end

end
