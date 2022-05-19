require 'rspec'
require_relative 'rspec'
# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories
# Story: As a developer, I can create a Task.
describe Task do
  it 'There is a task' do
    expect { Task.new }.to_not raise_error
  end
  # Story: As a developer, I can give a Task a title and retrieve it.
  it 'it can have a title' do
    new_task = Task.new
    new_task.title = 'get some sleep'
    expect(new_task.title).to be_a String
    expect(new_task.title).to eq 'get some sleep'
  end
  # Story: As a developer, I can give a Task a description and retrieve it.
  it 'can be given a description' do
    new_task = Task.new
    new_task.description = 'I need to make sure I go to be by 12am this time.'
    expect(new_task.description).to be_a String
    expect(new_task.description).to eq 'I need to make sure I go to be by 12am this time.'
  end

  # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
  it 'it starts as "in progress"' do
    new_task = Task.new
    expect(new_task.progress).to be_a String
    expect(new_task.progress).to eq 'in progress'
  end

  # Story: As a developer, when I print a Task that is done, its status is shown.
  it 'it can be marked as "done"' do
    new_task = Task.new
    new_task.mark_done
    expect(new_task.progress).to be_a String
    expect(new_task.progress).to eq 'complete'
  end
end

#==========================================================
# Story: As a developer, I can add all of my Tasks to a TaskList.
describe 'TaskList' do
  it 'has to be real' do
    expect { TaskList.new }.to_not raise_error
  end
  it 'can hold tasks' do
    list = TaskList.new
    new_task = Task.new
    list.to_do << new_task
    expect(list.to_do).to be_an Array
    expect(list.to_do.length).to eq 1
  end
end

# Story: As a developer with a TaskList, I can print the completed items.

# it 'it can be added to a task list"' do
#   new_task = Task.new
#    << new_task
#   expect(new_task.progress).to be_a String
#   expect(new_task.progress).to eq 'complete'
# end

# Story: As a developer with a TaskList, I can print the incomplete items.

# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

# Story: As a developer with a TaskList, I can list all the not completed items that are due today.

# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.

# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
