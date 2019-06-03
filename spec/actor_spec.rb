require_relative 'spec_helper'

describe "Actor" do
#TODO: implement the tests as described in the it blocks,
# and implement the class and migrations required to pass them
# HINTS: look at show_spec.rb and network_spec.rb and character_spec.rb for guidance
  it "has a first and last name" do
    actor = Actor.create(:first_name => "Patrick", :last_name => "Stewart")
    expect(actor.first_name).to eq("Patrick")
    expect(actor.last_name).to eq("Stewart")
  end

  it "has associated characters in an array" do
    george = Actor.create(first_name: "George", last_name: "Georges")
    characters = [
      Character.new(:name => "Samson"),
      Character.new(:name => "Humperdink")
    ]
    george.characters << characters
    george.save
    expect(george.characters.count).to eq(2)
  end

  it "can build its associated characters" do
    jam = Character.new(:name => "jamgirl")
    jam.build_show(:name => "i like jam and stuff")
    expect(jam.show.name).to eq("i like jam and stuff")
  end

  it "can build its associated shows through its characters" do
  # TODO in one line, build a show and a character for this actor
    george = Actor.create(first_name: "George", last_name: "Georges")
    george.characters.build(name: "Georgie Poo").build_show(name: "Georgie Poo's Show")
    character = george.characters[0]
    expect(character.name).to eq("Georgie Poo")
    expect(character.show.name).to eq("Georgie Poo's Show")
  end

  it "can list its full name" do
  # TODO create an instance method on actor called .full_name to return first and last name together
    george = Actor.create(first_name: "George", last_name: "Georges")
    expect(george.full_name).to eq("George Georges")
  end

  it "can list all of its shows and characters" do
  # TODO create a list_roles method
    george = Actor.create(first_name: "George", last_name: "Georges")
    george.characters.build(name: "Georgie Poo").build_show(name: "Georgie Poo's Show")
    expect(george.list_roles).to include("Georgie Poo - Georgie Poo's Show")
  end
end