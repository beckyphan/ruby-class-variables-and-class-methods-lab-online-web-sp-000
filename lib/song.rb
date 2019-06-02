class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 

  
  def genres 
    genres = []
    @@genres.each do |genre|
      if genres.include?(genre)
        return
      else
        genres << genre 
      end
    end
    genres
  end 
  
  def count
    @@count
  end
  
  def artists
    artists = []
    @@artists.each do |artist|
      if artists.include?(artist)
        
      else 
        artists << artists
      end
    end
    artists
  end 
  
  def genre_count
    genres = {}
    @@genres.each do |genre|
      if genres.include?(genre)
        genres[genre] += 1
      else
        genres[genre] = 1
      end
    end
    genres
  end 
  
    def artist_count
    artists = {}
    @@artists.each do |artist|
      if artists.include?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    end
    artists
  end 
  
end