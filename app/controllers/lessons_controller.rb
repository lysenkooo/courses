class LessonsController < ApplicationController
  before_action :set_course, only: [:index, :show]
  before_action :set_lesson, only: [:show]

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = @course.lessons
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    enrollment = Enrollment.find_or_create_by(
      user: current_user,
      course: @lesson.course,
    )

    enrollment.update(step: @lesson.position)
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def set_course
    @course = current_user.courses.find(params[:course_id])
  end
end
