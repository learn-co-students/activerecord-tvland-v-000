class Actor < ActiveRecord::Base

  characters = []

  def name
    first_name = @first_name
    last_name = @last_name
  end

  def full_name
    return Actor.find_by_sql("SELECT actors.first_name, actors.last_name")
  end

  def list_roles
    return Actor.find_by_sql("SELECT characters.name")
  end
