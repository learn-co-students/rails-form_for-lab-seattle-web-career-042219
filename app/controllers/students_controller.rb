class StudentsController < ApplicationController
    
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit!)
        redirect_to @student
    end

    def show
        set_student
    end

    def edit
        set_student
    end

    def update
        set_student
        @student.update(set_params)
        redirect_to @student
    end


    private

    def set_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def set_student
        @student = Student.find(params[:id])
    end



end 