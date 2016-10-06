class AppointmentsController < ApplicationController
  before_action :authenticate_teacher!, only: :index
  before_action :authenticate_student!, only: :create 
  
  def index
    @pending_appointments = Appointment.where(teacher_id: current_teacher.id, confirmation: false).order("created_at desc")
    @confirmed_appointments = Appointment.where(teacher_id: current_teacher.id, confirmation: true).order("created_at desc")
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    
  end

  def create
  	@teacher = Teacher.find(params[:teacher_id])
    @sport = Sport.find(params[:sport_id])
    @student = current_student
    appointment = @teacher.appointments.new(student_id: @student.id, sport_id: @sport.id)
  	appointment.save
    
    redirect_to sports_path
  end

  def edit
    @appointment_change = Appointment.find(params[:id])
    @appointment_change.update(:confirmation => true)
  end


end