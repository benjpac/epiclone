require 'rails_helper'


# RSpec.describe Lesson, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Lesson do

  it { should belong_to :section }
  
  context '#next' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      chapter1 = Chapter.create(name: 'Rails')
      section1 = chapter1.sections.create(name: 'Intro to Rails')
      lesson1 = section1.lessons.create(name: 'Install Rails', content: 'Install rails and get to work!')
      lesson2 = section1.lessons.create(name: 'fuck it', content: 'hard!')
      expect(lesson1.next).to eq lesson2
    end
  end

  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      chapter1 = Chapter.create(name: 'Rails')
      section1 = chapter1.sections.create(name: 'Intro to Rails')
      lesson1 = section1.lessons.create(name: 'Install Rails', content: 'Install rails and get to work!')
      lesson2 = section1.lessons.create(name: 'fuck it', content: 'hard!')
      expect(lesson2.previous).to eq lesson1
    end
  end


end
