class Artist
	attr_accessor :name

	@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
		song.artist = self
		@@song_count += 1
	end

	def add_song_by_name(song_name)
		song = Song.new(song_name)
		@songs << song
		song.artist = self	
		@@song_count += 1
	end

	def self.song_count
		@@song_count
	end

end

kanye_west = Artist.new("Kanye West")
#all_falls_down = Song.new("All Falls Down")
#all_falls_down.artist = kanye_west