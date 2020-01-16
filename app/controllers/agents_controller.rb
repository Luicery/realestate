class AgentsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @agent = Agent.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @agent = Agent.all
  end
end
