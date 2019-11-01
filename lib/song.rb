require_relative 'artist'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_parts = filename.split(' - ')
    song = Song.new(filename_parts[1])
    song.artist = Artist.new(filename_parts[0])
    song.artist.save
    song.artist.add_song(song)
    song
  end
end