require_relative 'song'

class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = Dir.foreach(filepath).select { |x| File.file?("#{filepath}/#{x}") }
  end

  def import
    @files.each { |file| Song.new_by_filename(file) }
  end
end
