class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end


  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render :new
    end
  end


  def show
    @course = Course.find(params[:id])
  end


  private

  def course_params
    params.require(:course).permit(:title, :code)
  end
end
