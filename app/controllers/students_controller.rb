class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    @student.sorting_hat
    @student.save!
    redirect_to @student
  end


  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to student_path
  end

  private
    def student_params
    params.require(:student).permit(:name, :img_url, :house)
    end
end
