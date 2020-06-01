class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authorize 
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page. If you want to see these recipes, please sign up!"
      redirect_to '/signup'
    end
  end
end
