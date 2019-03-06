class Artist 
  #DIRECT: relationship with song 
  #INDIRECT: relationship with genre through song 
  @@all = []
  
 attr_reader :name
 
 def initialize(name, artist, genre)
   @name = name 
   @@all << self 
 end 
 
 def self.all 
   @@all 
 end 
 
 end 