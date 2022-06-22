require 'todo'

RSpec.describe TODO do
  it "takes the todo and returns it" do
    todo_item = TODO.new("Coding")
    expect(todo_item.print_todo).to eq "Coding"
  end
end
