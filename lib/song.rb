require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #artist.add_song(self)
  end

  def save
    @@all << self
    self
  end

  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    song = Song.new(array[1])
    song.artist_name = array[0]
    #binding.pry
    song.save

  end

end
