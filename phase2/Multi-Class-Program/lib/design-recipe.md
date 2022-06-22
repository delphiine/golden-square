{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ Reading                    │
│                            │ 
│ - initialize(wpm, diary)   |
  - count_words              │
│ - read_time_check(time)    │         
│ - search_by_reading_time(time) │     
│   => [chunk...]            |        
                             |         
└───────────┬────────────────┘ 
            │
            │ owns a list of
            ▼
┌────────────────────────────┐          --------------------------
│ Diary                      │         | Todo(task)               |
│                            │         |                          |    
│ - add(entry)               |         |                          |
| - add(todo)                │----->   | - initialize             |
│ - all                      │         |                          |
│                            |         |                          |
│                            |         |                          |
|- search_by_contact_number(number)    |                          |
                             |         |                          |
└───────────┬────────────────┘          ---------------------------
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ DiaryEntry(title, contents)│
│                         │
│ - title                 │
│ - contents              │
│                         │
│   => "Contents"         │
└─────────────────────────┘


Also design the interface of each class in more detail.

class Diary
  def initialize
    # ...
    @entries = []
    @phobne_numbers = []
  end

  def add_entry(entry)
  end

  def add_todo(todo)
  end

  def add_phone_number(phone_number)
    @entries.each do |string| ["hello, people", "hi, my number is 012345678"]
      string.split(" ").each do |word|
        if @contents.scan(/0[0-9]{9}/).is_true?
          @phone_numbers << number
        end
      end 
    end 
  end 
  
  def all_entries
  end

  def all_todos
  end
  
  def all_phone_numbers
  end
end

class DiaryEntry
  def initialize(title, content) 
    @title = tile
    @content = content
  end

  def content
  # returns content as a string
    return words.length
  end
  def title
  end

end

class Reading 
  def initialize(wpm, diary)
    @wpm = wpm
    @diary = diary
    @appropriate_content = []
  end 

  def count_words
    return words.length
  end

  def readable_entries
    fail "Reading speed must be above zero." unless wpm.positive? # checks that reading speed is a positive integer      
    minutes = (count_words / wpm.to_f).ceil #.ceil rounds up. Minutes is the time taken to read an entry.
    return minutes
    end 
  end

  def read_time_check(time)
    @diary.entries.each do |entry|
      if readable_entries(entry.content) < time
        @appropriate_content << entry.content
      end
    end
    return @appropriate_content.max_by { |sentence| sentence.length } 
  end 

  private 

  def words
    return @content.split(" ")
  end 
  
end 

class TODO
  def initialize(todo) 
  end

  def todo
  # returns todo as a string
  end
end

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Integrated Test
diary = Diary.new
entry = DiaryEntry.new("title", "content")
diary.add_entry(entry)
result = diary.all_entries
expect(result).to eq [entry]

diary = Diary.new
todo = TODO.new("todo")
diary.add_todo(todo)
result = diary.all_todos
expect(result).to eq [todo]

diary = Diary.new
phone_number = DiaryEntry.new("title", "0712345678") 
diary.add_phone_number(phone_number)
result = diary.all_phone_numbers
expect(results).to eq ["0712345678"]

diary = Diary.new
phone_number1 = DiaryEntry.new("title", "0712345")
phone_number2 = DiaryEntry.new("title", "0712345678") 
diary.add_phone_number(phone_number1)
diary.add_phone_number(phone_number2)
result = diary.all_phone_numbers
expect(results).to eq ["0712345678"]

diary = Diary.new
phone_number1 = DiaryEntry.new("title", "0712345667")
phone_number2 = DiaryEntry.new("title", "0712345678") 
diary.add_phone_number(phone_number1)
diary.add_phone_number(phone_number2)
result = diary.all_phone_numbers
expect(results).to eq ["0712345667", "0712345678"]

diary = Diary.new
phone_number = DiaryEntry.new("title", "171234539") 
diary.add_phone_number(phone_number)
result = diary.all_phone_numbers
expect(results).to eq []

diary = Diary.new
reading = Reading.new(2, diary)
reading_section_1 = DiaryEntry.new("title", "some content") # 2 words
reading_section_2 = DiaryEntry.new("title", "some fun content") # 3 words
diary.add(reading_section_1)
diary.add(reading_section_2)
expect(reading.read_time_check(2)).to eq ("some content")

diary = Diary.new
reading = Reading.new(2, diary)
reading_section_1 = DiaryEntry.new("title", "some content") # 2 words
reading_section_2 = DiaryEntry.new("title", "content") # 1 word
diary.add(reading_section_1)
diary.add(reading_section_2)
expect(reading.read_time_check(2)).to eq ("some content")

diary = Diary.new
reading = Reading.new(2, diary)
reading_section_1 = DiaryEntry.new("title", "some fun content") # 3 words
reading_section_2 = DiaryEntry.new("title", "even more fun content") # 4 words
diary.add(reading_section_1)
diary.add(reading_section_2)
expect(reading.read_time_check(2)).to eq (""))



4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# DiaryEntry Test

diary_entry = DiaryEntry.new("title", "contents")
expect(diary_entry.title).to eq "title"

diary_entry = DiaryEntry.new("title", "contents")
expect(diary_entry.contents).to eq "contents"

entry = DiaryEntry.new("title", "content")
expect(entry.count_words).to eq 1

entry = DiaryEntry.new("title 1", "content 2")
expect(entry.count_words).to eq 2



# Todo Test

todo_item = TODO.new("Coding")
expect(todo_item.todo).to eq "Coding"


# Diary 

diary = Diary.new
expect(diary.all_entries).to eq []

diary = Diary.new
expect(diary.all_phone_numbers).to eq []

diary = Diary.new
expect(diary.all_todos).to eq []

diary = Diary.new
diary.add_entry("Hello")
expect(diary.all_entries).to eq ["Hello"]

diary = Diary.new
diary.add_todo("Wash car")
expect(diary.all_todo).to eq ["Wash car"]

diary = Diary.new
diary.add_entry("071234567")
expect(diary.all_entries).to eq ["071234567"]



5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.