=begin
1. Describe the Problem
- As a user so that I can keep track of my tasks I want a program that I can add todo tasks to and see a list of them.
- As a user so that I can focus on tasks to complete I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
The name of the class is 'TaskManager'. It has three methods: 'initialize', 'add', print_list and 'remove'.
- 'initialize': initalizes the '@todo_list' and '@item_num' variables. 
- 'add': takes a string, numbers it and then adds it to the TODO list 
- 'remove': takes a number (as a string) and removes that number of item from the list of TODOs
- 'print_list' returns the list of items. The items are separated by a new line. Returns 'your TODO list is empty' when the 
   list is empty.

3. Create Examples as Tests

test examples for when the add method is called:
"dishes" => 
"1. dishes"

"dishes", "coding" => 
"1. dishes" 
"2. coding"

"dishes", "coding", "do yoga" => 
"1. dishes", 
"2. coding", 
"3. do yoga"

4. Implement the Behaviour
=end

require 'TaskManager'

RSpec.describe TaskManager do
    it 'adds item to list and returns the updated list when calling add method' do
        task = TaskManager.new
        task.add("coding")
        expect(task.print_list).to eq "1. coding"
    end
    it 'it removes item from list and returns the new TODO list when remove method is called' do
        task = TaskManager.new
        task.add("coding")
        task.add("do dishes")
        task.add("baking")
        task.remove("1")
        task.remove("3")
        expect(task.print_list).to eq "2. do dishes"
    end
    it "throughs error message when 'Your list is empty' when list is empty" do
        task = TaskManager.new
        expect{task.print_list}.to raise_error "Your list is empty"
    end
end 