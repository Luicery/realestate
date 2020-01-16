class WatchesController < ApplicationController
  def create
  end

  def show
    if (Watch.find_by user_id: @current_user.id).present? == true
      @watchUser = (Watch.find_by user_id: @current_user.id).user
      @watch = Watch.find_by user_id: @current_user.id
    elsif (Watch.find_by agent_id: @current_user.id).present? == true
      @watchUser = (Watch.find_by agent_id: @current_user.id).agent
      @watch = Watch.find_by agent_id: @current_user.id
    end
  end

  def edit
  end

  def update
    propertyInput = Property.find params[:id]
    if @current_user.present? == true
      if (Watch.find_by user_id: @current_user.id).present? == true
        @watch = Watch.find_by user_id: @current_user.id
        @watch.properties << propertyInput
        redirect_to property_path(params[:id])
      elsif (Watch.find_by agent_id: @current_user.id).present? == true
        @watch = Watch.find_by agent_id: @current_user.id
        @watch.properties << propertyInput
        redirect_to property_path(params[:id])
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    if (Watch.find_by user_id: @current_user.id).present? == true
      @watch = Watch.find_by user_id: @current_user.id
      @watch.properties.delete(@watch.properties.find params[:id]) 
      redirect_to property_path(params[:id])
    elsif (Watch.find_by agent_id: @current_user.id).present? == true
      @watch = Watch.find_by agent_id: @current_user.id
      @watch.properties.delete(@watch.properties.find params[:id])
      redirect_to property_path(params[:id])
    end
  end
end
