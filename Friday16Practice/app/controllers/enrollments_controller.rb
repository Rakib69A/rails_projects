class EnrollmentsController < ApplicationController
  def new
    @students = Student.all
    @courses = Course.all
  end

  def create
    student = Student.find(params[:student_id])
    selected_courses = Course.where(id: params[:course_id])
    student.courses << selected_courses

    redirect_to student_path(student)
  end
end
