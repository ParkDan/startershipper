class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find_by_user_id(current_user.id)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new
    @profile.name = params[:name]
    @profile.meet_pref = params[:meet_pref]
    @profile.avail_times = params[:avail_times]
    @profile.bio = params[:bio]
    @profile.user_id = current_user.id

    if @profile.save
            redirect_to profiles_url
          else
      render 'new'
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
