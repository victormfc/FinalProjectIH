class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  # def after_sign_in_path_for(teacher)
  #   appointments_path
  # end
  def after_sign_in_path_for(student)
    if current_student != nil
      student_path current_student
    else
      pending_appointments_path(current_teacher)
    end
  end
  
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sport_id])
    end
end



