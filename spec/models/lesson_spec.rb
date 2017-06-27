require 'rails_helper'

RSpec.describe Lesson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Lesson do
  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :id => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :id => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      previous_lesson = Lesson.create({:name => 'lesson1', :id => 1})
      current_lesson = Lesson.create({:name => 'lesson2', :id => 2})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end

end
