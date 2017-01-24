class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def progress
    @student = Student.find(params[:id])
    render json: { student: @student.username,
                   lesson: @student.progress.lesson.number,
                   part: @student.progress.part.number
                 }
  end
end
