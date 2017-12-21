module ApplicationHelper
  def link_to_go_lesson(lesson)
    enrollment = lesson.course.enrollment(current_user)
    step = enrollment ? enrollment.step.to_i : 0

    return if lesson.position > step + 1

    link_to 'Go', course_lesson_path(@course, lesson)
  end
end
