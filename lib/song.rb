class Song 
  attr_accessor :name, :artist
  
  @@all = []

def initialize(name)
  @name = name 
  @@all << self
end 

def self.all
  @@all
end 

  def self.new_by_filename(filename)
    artist_song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
end 

end 