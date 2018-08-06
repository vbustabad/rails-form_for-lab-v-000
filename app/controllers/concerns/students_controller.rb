class StudentsController < ApplicationController

  def index
    @students = Students.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(first_name: params[:first_name], last_name: params[:last_name])
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end

end
