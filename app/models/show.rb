class Show < ActiveRecord::Base

belongs_to :network
has_many :actors
has_many :characters

  def actors_list
    binding.pry
    #that returns an Array of the full names of each actor
    # associated with the a show.
    # Remember, a show should have many actors through characters.
    self.actor_id.map do |n|
       n.name
binding.pry



  end
end

end
