class NetworksController < ApplicationController

  def index
    @networks = Network.all
    if user_signed_in?
      redirect_to network_url(1)
    end
  end

  def show
    @posts=Post.all
    @network = Network.find_by_id(params[:id])
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new
    @network.name = params[:name]
    # @network.password = params[:password]

    if @network.save
            redirect_to networks_url
          else
      render 'new'
    end
  end

  # def verify
  #   @network=Network.find_by_id(params[:id])
  #   if @network.password==params[:password]
  #     session[:network_id]=params[:id]
  #     current_user.network_id=params[:id]
  #     redirect_to network_url(params[:id])
  #   else
  #     redirect_to networks_url, notice: "Sorry try again"
  #   end
  # end
  def edit
    @network = Network.find_by_id(params[:id])
  end

  def update
    @network = Network.find_by_id(params[:id])
    @network.name = params[:name]
    # @network.password = params[:password]

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
