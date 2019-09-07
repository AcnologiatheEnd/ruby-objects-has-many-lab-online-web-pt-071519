
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    songs.push(song) 
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
  def songs
   Song.all.select do |song|
      song.artist == self
    end
  end
end


