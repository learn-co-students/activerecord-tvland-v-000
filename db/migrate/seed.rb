#Examples:

# BELONGS TO

s = Song.new(:name => "Thriller")
s.artist = Artist.new(:name => "MJ") # building artist then immediately assigning it to the song object
s.save #will run 2 inserts

s = Song.new(:name => "Runaway")
s.build_artist(:name => "Kanye") # building artist off of the song
s.save # will run 2 inserts

Song.new is to build_association
as Song.create is to create_association
  # whenever you create something, you are instantiating and saving/persisting to the database

#both above are equivalent

# HAS MANY
  # replace "collection" with 
  

#parent is always on the far left