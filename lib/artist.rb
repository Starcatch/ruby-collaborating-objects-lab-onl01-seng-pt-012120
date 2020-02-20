class Artist
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    #This instance method receives an instance of a Song and #associates it belongs to this Artist instance.
    song.artist = self
  end 
  
  def  songs 
    Song.all.select do |song|
      song.artist == self 
  end 
 end 
 
 def find_or_create_by_name(artist_name)
  if self.find(artist_name)
    self.find(artist_name)
  else 
    self.new(artist_name)
 end 
end

def self.find(artist_name)
  self.all.find {|artist| artist.name == artist_name}
end

def print_songs 
  self.songs.each {|song| puts
end 