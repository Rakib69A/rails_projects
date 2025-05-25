class StudentsController < ApplicationController
  # before_action :set_student, only: %i[show edit update destroy]
  before_action :set_student, only: %i[show edit update destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    # first way
    # @student = Student.create(
    #   first_name: params[:student][:first_name],
    #   last_name: params[:student][:last_name],
    #   email: params[:student][:email],
    #   phone: params[:student][:phone],
    #   city: params[:student][:city],
    #   dob: params[:student][:dob]
    # )

    # Second way
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'Student has been created successfully!'
    else
      render :new
    end
  end

  def show
    # @student = Student.find(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student has benn updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    # @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path, notice: 'Student has been deleted successfully!'
  end

  # The below two is custom member function
  # It's custom routes define in the config/routes.rb file
  def search
    query = params[:id]
    @studetns = Student.where("first_name ILIKE ? OR last_name ILIKE ?", "%#{query}%", "%#{query}%")
    render :index
  end

  def import
    Student.import(params[:file])
    redirect_to students_path, notice: 'Studetents imported!'
  end

  def profile
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.update(active: true)
    redirect_to students_path(@student), notice: 'Student is now active!'
  end

  # একাধিক রেকর্ডে অ্যাকশন	collection
  # একটি রেকর্ডে অ্যাকশন	member


  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :phone, :city, :date_of_birth)
  end
  # DRY code - Do not Repeat Yourself
  def set_student
    @student = Student.find(params[:id])
  end
end
