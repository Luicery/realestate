class WatchesController < ApplicationController
  def create
  end

  def show
    @watch = Watch.where user_id:@current_user.id
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
