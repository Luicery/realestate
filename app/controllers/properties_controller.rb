class PropertiesController < ApplicationController
  def new
    if session[:agent_id].present? == false
      redirect_to properties_path
    end
    @property = Property.new
  end

  def create
    @property = Property.create property_params
    newImage = Image.create image:params[:images]
    @property.images << newImage
    listingAgent = Agent.find @current_user.id
    listingAgent.properties << @property
    redirect_to properties_path
  end

  def show
    @property = Property.find params[:id]
    @agent = @property.agents.first
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.update property_params
    redirect_to(properties_path)
  end

  def destroy
  end

  def index
    @property = Property.all
  end
  private
  def property_params
    params.require(:property).permit( :title, :price, :bathrooms, :bedrooms, :parking, :address, :area, :description)
  end
end
