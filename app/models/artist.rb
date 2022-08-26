class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
    # artist=Artist.first
    # artist.genres
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
    # self.song.where(genre==self.genre)

  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end
