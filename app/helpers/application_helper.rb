module ApplicationHelper

  def current_user
    @cuurent_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
