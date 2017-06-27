require 'rails_helper'

# RSpec.describe Section, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Section do

  it { should have_many :lessons }
  it { should belong_to :chapter }

  it 'creates a chapter, section, and lesson' do
    chapter1 = Chapter.create(name: 'Rails')
    section1 = chapter1.sections.create(name: 'Intro to Rails')
    lesson1 = section1.lessons.create(name: 'Install Rails', content: 'Install rails and get to work!')
  end

end
