class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find_by_user_id(current_user.id)
  end

  def new
    if Profile.find_by_id(current_user.id)
      redirect_to profiles_url notice: "Sorry"
    else
      @profile = Profile.new
    end

  end

  def create
    if Profile.find_by_id(current_user.id)
      redirect_to profiles_url notice: "Sorry please try again"
    else
      @profile = Profile.new
      @profile.name = params[:name]
      @profile.meet_pref = params[:meet_pref]
      @profile.avail_times = params[:avail_times]
      @profile.bio = params[:bio]
      @profile.user_id = current_user.id
      @profile.network_id=params[:network_id]

      if @profile.save
              redirect_to profiles_url
            else
        render 'new'
      end
    end
  end

  def edit
    @profile = Profile.find_by_id(params[:id])
  end

  def update
    @profile = Profile.find_by_id(params[:id])
    @profile.name = params[:name]
    @profile.meet_pref = params[:meet_pref]
    @profile.avail_times = params[:avail_times]
    @profile.bio = params[:bio]
    @profile.user_id = params[:user_id]
    @profile.network_id=params[:network_id]


    if @profile.save
            redirect_to profiles_url
          else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find_by_id(params[:id])
    @profile.destroy
        redirect_to profiles_url
      end
end
