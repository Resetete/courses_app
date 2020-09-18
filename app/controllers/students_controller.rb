class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'You have successfully created an account'
      redirect_to root_path
    else
      flash[:alert] = 'Something went wrong, please try again'
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name, :email)
  end
end
