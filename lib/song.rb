require 'pry'

class Song
  attr_accessor :songs, :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
  end


end
