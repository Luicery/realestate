class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create user_params
    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to user_path(@path.id)
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
end
