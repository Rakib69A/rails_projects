class StudentsController < ApplicationController
  # before_action :set_student, only: %i[show edit update destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    # frist way
    # @student = Student.create(
    #   name: params[:student][:name],
    #   email: params[:student][:email]
    # )
    #
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student created successfully"
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def delete_me
    p "Delete me is clicked, and i am a post request"
  end

  private

  def student_params
    params.require(:student).permit(:name, :email)
  end

  # def set_student
  #   @student = Student.find(parms[:id])
  # end
end
