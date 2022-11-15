class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :phone, :user_role])
    end

    def after_sign_in_path_for(resource)
        if current_user.user_role == 1
            current_user.patients.find_by(email: current_user.email) == nil ? new_patient_path : ""
        elsif current_user.user_role == 2
            current_user.doctors.find_by(email: current_user.email) == nil ? new_doctor_path : ""
        else
            ""
        end
    end
end