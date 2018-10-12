require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    new_song_title = data[1]
    artist = Artist.find_or_create_by_name(data[0])
    new_song = self.new(new_song_title)
    puts new_song
    new_song.artist = artist
    puts new_song
    binding.pry

  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end


end
