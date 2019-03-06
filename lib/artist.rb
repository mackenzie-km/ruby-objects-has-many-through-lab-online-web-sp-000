class Artist 
  #DIRECT: relationship with song 
  #INDIRECT: relationship with genre through song 
  
 attr_reader :name
 
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist 
   @genre = genre 
   @@all << self 
 end 