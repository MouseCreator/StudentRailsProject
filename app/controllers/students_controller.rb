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
    if @student.save
      redirect_to '/index'
    else
      render '/new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(params[:student])
    if @student.errors.empty?
      redirect_to @student
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to '/index'
  end


  private
  def student_params
    params[:student]
  end


end
