require 'pry'

class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end
