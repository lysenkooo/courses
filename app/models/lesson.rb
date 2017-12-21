class Lesson < ApplicationRecord
  belongs_to :course

  def next
    @next ||= Lesson.find_by(
      course: course,
      position: position + 1
    )
  end

  def prev
    @prev ||= Lesson.find_by(
      course: course,
      position: position - 1
    )
  end
end
