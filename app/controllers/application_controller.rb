class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_for_paper_trail
    admin_user_signed_in? ? current_admin_user.try(:id) : 'Unknown user'
  end

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.role?(:administrator)
      flash[:alert] = "You are not authorized to access this resource!"
            redirect_to root_path
        end
    end
end
