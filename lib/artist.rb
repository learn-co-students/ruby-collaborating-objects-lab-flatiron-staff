require 'pry'

class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    if artist
      artist
    else
      self.new(name)
    end
    #@@all.find do |artist|
    #  if name == artist.name
    #    return artist
    #  else
    #    name = Artist.new(name)
    #  end
    #end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
