class SportsController < ApplicationController
	before_action :authenticate_student!, except: [:show]

	def index
		@sports = Sport.all
		@student = current_student
		@appointments = Appointment.where(student_id: @student.id, confirmation: false).order("created_at DESC")
		@confirmed_appointments = Appointment.where(student_id: @student.id, confirmation: true).order("created_at DESC")
	end

	def show
		@sport = Sport.find_by(id: params[:id])
		if current_student
			@student = current_student
		end
	end

	def create
		teacher.appointment.create(appointment_params)
	end

end
