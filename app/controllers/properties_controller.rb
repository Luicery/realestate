class PropertiesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @property = Property.find params[:id]
    @agent = @property.agents.first
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @property = Property.all
  end
end
