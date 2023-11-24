class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if student.save
      session[:student_id] = @student.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
  private
  def student_params
    params.require(:student).permit(:name,:age,:dorm,:language,:teacher,:university)
  end
end
