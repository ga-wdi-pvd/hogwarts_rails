class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @students = student.find(:id)
  end

end
