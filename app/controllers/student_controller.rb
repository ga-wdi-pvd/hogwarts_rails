class StudentController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @house = House.find(params[:id])
    @students = @house.student
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

end
