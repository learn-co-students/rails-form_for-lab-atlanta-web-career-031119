class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
  end

  def create
    @student = Student.new()
    @student.first_name = params[:student_first_name]
    @student.last_name = params[:student_last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    find_student
  end

  def update
    @student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name])
      redirect_to student_path(@student)
  end

  def delete
  end

  private

    def find_student
      @student = Student.find(params[:id])
    end
end
