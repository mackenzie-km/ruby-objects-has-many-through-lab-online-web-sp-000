class Artist 
  #DIRECT: relationship with song 
  #INDIRECT: relationship with genre through song 
  @@all = []
  
 attr_reader :name, :songs
 
 def initialize(name)
   @name = name 
   @@all << self 
 end 
 
 def new_song(name, genre)
   name = Song.new(name, self, genre)
 end 
 
 def songs
   Song.all.select do |song| 
     song.artist == 
end 
 
 def self.all 
   @@all 
 end 
 
 end 