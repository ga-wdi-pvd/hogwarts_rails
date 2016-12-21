class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show
    @house = House.find(params[:id])
    @student = Student.find(params[:id])
  end

end
