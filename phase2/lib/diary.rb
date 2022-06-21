class Diary
  def initialize
    @list_of_entries = []
  end

  def add(entry) 
    @list_of_entries << entry
  end

  def all
    return @list_of_entries
  end

  def count_words
    return @list_of_entries.map(&:count_words).sum
  end

  def reading_time(wpm)
    fail "wpm must be positive." unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = [ ]
    
    @list_of_entries.each do |entry|
        readable_entries << entry if entry.reading_time(wpm) <= minutes
    end
    return readable_entries.first
  end
end
