class RentsController < ApplicationController
  def index
    @rent = Rent.all
  end

  def create
    @rent = Rent.create rent_params
    newImage = Imagerent.create image:params[:images]
    @rent.imagerents << newImage
    listingAgent = Agent.find @current_user.id
    listingAgent.rents << @rent
    redirect_to rents_path
  end

  def new
    @rent = Rent.new
  end

  def destroy
    toDelete = Rent.find params[:id]
    toDelete.delete
    redirect_to rents_path
  end

  def show
    @rent = Rent.find params[:id]
    @agent = @rent.agents.first
  end

  def update
  end

  def edit
  end
  private
  def rent_params
    params.require(:rent).permit( :title, :price, :bathrooms, :bedrooms, :parking, :address, :area, :description)
  end
end
