class TeachersController < ApplicationController
  def reports
    @current_teacher = Teacher.find(params[:id])
    @students = @current_teacher.students
  end
end
