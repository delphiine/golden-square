class DiaryEntry
    def initialize(title, contents) 
        @title = title
        @contents = contents
        @chunk_index = 0 #(attribute) has to initialize at zero - needs a value for us it. 
          #It enables us to reuse the index through each call
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
        @contents.split(' ').size
    end
  
    def reading_time(wpm) 
        count_words / wpm
    end
  
    def reading_chunk(wpm, minutes) 
        #numbers of words we can read per chunk
        number_of_words = wpm * minutes 
        words = @contents.split(" ")
        old_chunk_index = @chunk_index
        if count_words < (@chunk_index + number_of_words) 
          @chunk_index = 0
          # print whatever is left in the chunk
          return words[old_chunk_index...count_words].join(' ') 
        #This part will run if the the remaining content is greater or equal to the number of words we can read per minute
        else
          @chunk_index += number_of_words
          return words[old_chunk_index...@chunk_index].join(' ')
        end
      end
  end