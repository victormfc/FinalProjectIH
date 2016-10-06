class StudentsController < ApplicationController
  
  before_action :authenticate_student!, except: [:new, :create]
  
  def show
    @pending_appointments = Appointment.where(student_id: current_student.id, confirmation: false).order("created_at desc")
    @confirmed_appointments = Appointment.where(student_id: current_student.id, confirmation: true).order("created_at desc")
  end

  def confirm
  	@appointment = Appointment.find_by(id: params[:id])
  end

end
