class StudentsController < ApplicationController

  def index
    
    students = params[:name] ? Student.select {|s| s.to_s.downcase.include?(params[:name].downcase)} : Student.all
    #students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student 
  end
end
