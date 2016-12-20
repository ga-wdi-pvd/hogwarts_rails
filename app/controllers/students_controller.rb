class StudentsController < ApplicationController

    def index
      @students = Student.all
    end

    #new
    def new
      @students = Student.new
    end

    # create
    def create

      @students = Student.create(student_params)
      redirect_to students_path(@students)
    end

    def show
      @houses = House.all
      @students = Student.find(params[:id])
    end



end
