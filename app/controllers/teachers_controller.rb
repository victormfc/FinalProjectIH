class TeachersController < ApplicationController
  before_action :authenticate_teacher!, except: [:new, :create]

  def index
    @teachers = Teacher.all
  end

  def show_pending
  	@teacher = Teacher.find_by(id: params[:id])
  	unless @teacher
  		render 'no_user'
  	 	return
  	end
    @appointments = Appointment.where(teacher_id: current_teacher.id).where(confirmation: false).order("created_at desc")
  end

  def show_confirmed
    @teacher = Teacher.find_by(id: params[:id])
    unless @teacher
      render 'no_user'
      return
    end
    @confirmed_appointments = Appointment.where(teacher_id: current_teacher.id).where(confirmation: true).order("created_at desc")
  end


  def teacher_params
    params.require(:teacher).permit(:name, :email, :description, :age, :sport_id)
  end

end
