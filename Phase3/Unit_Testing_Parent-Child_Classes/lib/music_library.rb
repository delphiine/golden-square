class MusicLibrary
    def initialize
        @library = []
    end
  
    def add(track) 
        @library << track
    end
  
    def all # Returns a list of track objects
        return @library
    end
    
    def search(keyword) # Returns a list of tracks that match the keyword
        matching_tracks = []
        @library .each do |track| 
            matching_tracks << track if track.matches?(keyword)
        end
        return matching_tracks
    end
  end