class Show < ActiveRecord::Base

  def actors_list
    #that returns an Array of the full names of each actor
    # associated with the a show.
    # Remember, a show should have many actors through characters.
  end


end
