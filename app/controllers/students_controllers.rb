class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        allSt = Student.all
        render json: allSt.order(grade: :desc)
    end

end