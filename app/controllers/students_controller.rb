class StudentsController < ApplicationController


  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def show
    set_student
  end

  def edit
      set_student
  end

  def update
    @student = Student.update(student_params)
    redirect_to @student
  end

  private

  def student_params
  params.require(:student).permit(:first_name, :last_name)
  # you can just do params.require(:book).permit! to permit everything (unsafe)
end

def set_student
  @student = Student.find(params[:id])
end

end
