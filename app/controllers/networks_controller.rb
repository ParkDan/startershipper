class NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show
    @network = Network.find_by_id(params[:id])
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new
    @network.name = params[:name]
    @network.caption = params[:caption]
    
    if @network.save
            redirect_to networks_url
          else
      render 'new'
    end
  end

  def edit
    @network = Network.find_by_id(params[:id])
  end

  def update
    @network = Network.find_by_id(params[:id])
    @network.name = params[:name]
    @network.caption = params[:caption]
    
    if @network.save
            redirect_to networks_url
          else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find_by_id(params[:id])
    @network.destroy
        redirect_to networks_url
      end
end
