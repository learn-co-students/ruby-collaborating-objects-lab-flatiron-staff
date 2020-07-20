class MP3Importer 

	attr_accessor :path


	def initialize(path)
		@path = path
	end

	def files
		files = Dir.entries(@path)
		files.delete_if {|f| f[-3,3] != 'mp3'}
	end

	def import
		files.each do |f|
			Song.new_by_filename(f)
		end


	end


end