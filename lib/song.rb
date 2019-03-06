  require "pry"
class Song 
  #direct: songs have a direct relationship with the artist and a direct relationship with the genre
  #indirect: by nature, and to simply everything, songs are connecting points between genres and artists. 
 attr_reader :name, :artist, :genre 
 
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist 
   @genre = genre 
   @@all << self 
 end 
  binding.pry 
@@all = []

def self.all
  @@all
end 

end 