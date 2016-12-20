#
class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    # redirect_to new_student_path
  end

  def create
    @student = Student.create!(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end
end
