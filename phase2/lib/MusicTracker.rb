class MusicTracker
    def initialize
        @music_list = []
    end
    def add(artist, song)
        @music_list << "#{artist} - #{song}"
    end
    def print_list
        if @music_list.empty?
            fail "Your list is empty"
        end
        @music_list.join("\n")
    end
end
