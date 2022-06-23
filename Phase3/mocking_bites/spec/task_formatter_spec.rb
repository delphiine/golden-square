require 'task_formatter'

RSpec.describe TaskFormatter do
    context "Returns task" do
        it "Returns ' - [ ] Task title' if the task is not complete" do
            fake_task = double(:fake_task, to_s: "Do dishes", complete?: true)
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format).to eq "- [ ] Do dishes"
        end

        it "Returns ' - [x] Task title' if the task is not complete" do
            fake_task = double(:fake_task, to_s: "Do dishes", complete?: false)
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format).to eq "- [x] Do dishes"
        end
    end
end 
