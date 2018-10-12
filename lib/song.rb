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

    binding.pry
    new_song = self.new(new_song_title)
    puts new_song
    new_song.artist = artist
    artist.add_song(new_song)
    puts new_song

    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end


end
