require 'pry'

class MP3Importer
  attr_accessor :path

  # @@files = []

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir["#{self.path}/*"].each { |file|
      file.slice! "#{self.path}/"
    }
  end

  def import
    self.files.each { |file| Song.new_by_filename(file)}
  end

end
