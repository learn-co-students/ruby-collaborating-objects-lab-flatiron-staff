class MP3Importer
  attr_accessor :path, :files, :song, :file, :artist
  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    dir = Dir.new(self.path)
    dir.each do |file|
      if file.length > 4
        @files << file
      end
    end
    @files
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)

    end
  end

end
