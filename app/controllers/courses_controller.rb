class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = current_user.courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  private

  def set_course
    @course = current_user.courses.find(params[:id])
  end
end
