class StudentsController < ApplicationController

    def index
      @students = Student.all
    end

    def show
      @students = Student.find(params[:id])
    end
    #new
    def new
      @students = Student.new
    end

    # create
    def create
      @students = Student.new(student_params)
      @students.sorting_hat
      @students.save!
      redirect_to students_path(@students)
    end

    def destroy
      @students = Student.find(params[:id])
      @students.destroy

      redirect_to "/students"
    end

    private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end



end
