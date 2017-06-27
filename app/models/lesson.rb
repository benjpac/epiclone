class Lesson < ApplicationRecord
  belongs_to :section

  def previous
    return Lesson.find(self.id - 1)
  end

  def next
    return Lesson.find(self.id + 1)
  end
  
end
