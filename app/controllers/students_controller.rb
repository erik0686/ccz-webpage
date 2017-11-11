class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(sponsor_params)
		if @student.save
			redirect_to students_path
		else
			render 'new'
		end
	end

	def index
		@students = Student.all
	end


	private

	def sponsor_params
		params.require(:student).permit(:name, :last_name, :student_no, :degree, :hours_given, :end_of_service, :start_of_service)
	end
end
