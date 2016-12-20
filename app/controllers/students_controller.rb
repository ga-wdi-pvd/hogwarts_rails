class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    # @house = House.find(params[:id])  don't put that in because its not
    # nested even though it's one to many relationship
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
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
