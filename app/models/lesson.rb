# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  name       :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#
# Indexes
#
#  index_lessons_on_course_id  (course_id)
#

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
