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
  split_filename = filename.split("_")
  song = self.new(split_filename[1])
end 
end 