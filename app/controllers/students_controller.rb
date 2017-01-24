class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    render json: @student
  end

  def progress
    @student = Student.find(params[:id])
    @part = Part.find(@student.progress.lesson_id)
    @lesson = Lesson.find(@student.progress.lesson_id)
    render json: { student: @student.username,
                   lesson: @lesson.number,
                   part: @part.number
                 }
  end
end
