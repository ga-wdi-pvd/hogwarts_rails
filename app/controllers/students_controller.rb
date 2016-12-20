class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
  end 

  def show
    @student = Student.find(params[:id])
  end

end
