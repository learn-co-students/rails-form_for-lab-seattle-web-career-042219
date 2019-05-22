class StudentsController < ApplicationController
  def new

  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student
  end

  def show
  end

  def edit
  end

  def update
  end
end
