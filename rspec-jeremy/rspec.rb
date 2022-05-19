require 'date'
# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories
# Story: As a developer, I can create a Task.

# Task class ===================================================================
class Task
  attr_accessor :title, :description, :due_date
  attr_reader :progress

  def initialize
    @title = 'no title added'
    @description = 'no description added'
    @progress = 'in progress'
    @due_date = Date.new(9999, 5, 5)
  end

  def deadline(date)
    @due_date = date
  end

  def mark_done
    @progress = 'complete'
  end
end

# TaskList class ===============================================================
class TaskList
  attr_accessor :to_do

  def initialize
    @to_do = []
  end

  def by_due_date
    due = nil
    output = []
    sorted = @to_do.sort { |obj1, obj2| obj1.due_date <=> obj2.due_date }
    due = sorted.select { |i| i.progress == 'in progress' }
    due.each do |key|
      output << key.title
    end
    output
  end

  def due_today
    due = nil
    output = []
    todays_date = Date.today.to_s

    due = @to_do.select { |i| i.progress == 'in progress' && i.due_date.to_s == todays_date }
    due.each do |_key|
      output << _key.title.to_s
    end
    output
  end

  def show_complete
    completed = nil
    output = []

    completed = @to_do.select { |i| i.progress == 'complete' }
    completed.each do |_key|
      output << _key.title
    end
    output
  end

  def show_incomplete
    incomplete = nil
    output = []

    incomplete = @to_do.select { |i| i.progress == 'in progress' }
    incomplete.each do |_key|
      output << _key.title
    end
    output
  end
end
