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

  def self.new_by_filename(some_filename)
    artist_and_name = some_filename.split(" - ")
    song = self.new(artist_and_name[1])
    song.artist = Artist.find_or_create_by_name(artist_and_name[0])
    song
  end

end
