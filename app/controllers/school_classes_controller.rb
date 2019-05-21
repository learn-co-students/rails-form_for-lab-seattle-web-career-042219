class SchoolClassesController < ApplicationController
before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  def new
    @school = SchoolClass.new
  end

  def index

    @school_classes = SchoolClass.all
  end

  def create
    @school_class = SchoolClass.create(school_params)
    redirect_to @school_class
  end

  def update
    @school_class.update(school_params)
    redirect_to @school_class
  end

  private

  def school_params
  params.require(:school_class).permit(:title, :room_number)

end

def set_school_class
  @school_class = SchoolClass.find(params[:id])
end

end
