class UsersController < ApplicationController
  before_action :check_current_user, except: [:new, :create]
  before_action :check_if_logged_in, except: [:new]
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    raise
    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      #if there was an error in the signup then it will not redirect and instead do This
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def check_current_user
    if params[:id] == @current_user.id.to_s

    else
      redirect_to "/properties"
    end
  end
  private
  def user_params
    params.require(:user).permit( :name, :username, :email, :password, :password_confirmation, :phone)
  end
end
