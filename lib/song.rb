require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    new_song_artist = data[0]
    new_song_title = data[1]
    new_song = self.new(new_song_title)
    new_song.artist_name=(new_song_artist)
    puts new_song
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
