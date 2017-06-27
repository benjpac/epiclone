class Section < ApplicationRecord
  has_many :lessons
  belongs_to :chapter
end
