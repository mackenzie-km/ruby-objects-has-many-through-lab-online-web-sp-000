class Genre
  #DIRECT: relationship with song 
  #INDIRECT: relationship with artist through song 
  @@all = []
  
 attr_reader :name
 
 def initialize(name)
   @name = name 
   @@all << self 
 end 
 
 def self.all 
   @@all 
 end 
 
  def songs
   Song.all.select do |song| 
     song.genre == self
   end 
 end 
 
 end 