ActiveAdmin.setup do |config|
  config.authentication_method = :authenticate_active_admin_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.logout_link_method = :delete
end