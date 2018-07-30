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
    @@all.find do |artist|
      if name == artist
        return name
      else
        name = Artist.new(name)
      end
    end
  end

  def print_songs
    print self.songs
  end
end
