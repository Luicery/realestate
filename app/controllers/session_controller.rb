class SessionController < ApplicationController
  def new
  end

  def create
      #See if email address actually exists by finding it
      user = User.find_by email: params[:email]
      #Checking if the user exists and if the password given is the same as the encrypted one
      if user.present? && user.authenticate(params[:password])
        #Success

        #Get rails to create a new key in a special system variable
        #Called "session" this variable is remembered across the entire site
        session[:user_id] = user.id
        @current_user = user
        redirect_to user_path(user.id)
      else
        #Failed
        flash[:error] = "Invalid email or password"
        redirect_to login_path
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
end
