require 'pry'

class Song
	attr_accessor :name, :genre, :artist

	def initialize(name)
		@name = name
		
	end

	def artist_name
		if !@artist
			return nil
		else
			self.artist.name
		end
	end
end

