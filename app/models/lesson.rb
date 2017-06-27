class Lesson < ApplicationRecord

  def previous
    Lesson.find(self.id - 1)
  end
  
end
