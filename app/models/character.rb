class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  attr_accessor :catchphrase

  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end

  # def catchphrase
  #   # self.add_column
  #   # binding.pry
  # end
  # urkel = Character.new(:name => "Steve Urkel")
  # urkel.catchphrase = "Did I do that?"
  # urkel.save
  # expect(Character.find_by(:id => urkel.id).catchphrase).to eq(urkel.catchphrase)
  #
  # expect(urkel.say_that_thing_you_say).to eq("#{urkel.name} always says: #{urkel.catchphrase}")

end
