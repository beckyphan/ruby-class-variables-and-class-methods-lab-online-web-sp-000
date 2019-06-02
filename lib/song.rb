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
  
  
end