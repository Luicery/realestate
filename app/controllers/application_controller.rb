class ApplicationController < ActionController::Base
  def fetch_user
    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end
    #delete the session (clear the id from the session) if ID did not return a valid user
    unless @current_user.present?
      session[:user_id] = nil
    end
  end
end
