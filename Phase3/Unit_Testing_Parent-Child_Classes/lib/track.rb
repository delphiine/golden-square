class Track
    def initialize(title, artist) # title and artist are both strings
        @title = title
        @artist = artist
    end
  
    def matches?(keyword)  # keyword is a string
        @title.split(" ").each do |word|
            if word == keyword 
                return true
            end
        end

        @artist.split(" ").each do |word|
            if word == keyword 
                return true
            end
        end
        return false
    end
  end